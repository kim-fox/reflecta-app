# ==========================================
# Estágio 1: Build (Compilação da Aplicação)
# ==========================================
FROM public.ecr.aws/docker/library/debian:bullseye-slim AS build-env

# Instalar dependências de sistema necessárias para o Flutter
RUN apt-get update && \
    apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback python3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Definir variáveis de ambiente para o Flutter
ENV FLUTTER_HOME=/usr/local/flutter
ENV PATH="${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin:${PATH}"

# Fazer o clone da versão estável do Flutter
RUN git clone -b stable https://github.com/flutter/flutter.git ${FLUTTER_HOME}

# Forçar a configuração para web e executar o doctor para validar o ambiente
RUN flutter config --enable-web && \
    flutter doctor -v

# Definir o diretório de trabalho da aplicação
WORKDIR /app

# Copiar os ficheiros de dependências primeiro (otimização do cache do Docker)
COPY pubspec.* ./
RUN flutter pub get

# Copiar o restante código fonte do projeto
COPY . .

# Compilar a aplicação para Web em modo release
RUN flutter build web --release

# ==========================================
# Estágio 2: Run (Servir com Nginx)
# ==========================================
FROM public.ecr.aws/nginx/nginx:alpine

# Opcional: Remover os ficheiros padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar os ficheiros compilados (artefactos) do estágio de build para o Nginx
COPY --from=build-env /app/build/web /usr/share/nginx/html

# Expor a porta 80 para tráfego HTTP
EXPOSE 80

# Iniciar o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]
