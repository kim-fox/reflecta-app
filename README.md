# Reflecta - Sua Jornada Interior

O **Reflecta** é um aplicativo móvel e web desenvolvido em Flutter focado em **Inteligência Emocional**, **Autoconhecimento** e **Desenvolvimento Pessoal**. O objetivo da aplicação é proporcionar momentos de reflexão diária por meio de conselhos, provérbios e citações inspiradoras de grandes pensadores, psicólogos e sabedorias ancestrais (como provérbios africanos).

## 🎯 O que a aplicação faz?

A aplicação apresenta uma interface minimalista, moderna e com animações suaves, desenhada para ajudar os usuários a se desconectarem do ritmo acelerado do dia a dia. 

As principais funcionalidades incluem:
- **Exibição de Citações Aleatórias:** Mostra um conselho por vez na tela, categorizado por temas como Empatia, Resiliência, Atenção Plena (Mindfulness), Autocuidado e Vulnerabilidade.
- **Interação Simples:** O usuário pode clicar no botão "NOVO CONSELHO" para gerar uma nova citação de forma fluida e animada.
- **Design Imersivo:** Conta com um esquema de cores escuro (*Dark Mode*) com tons em roxo e verde (*Teal*), proporcionando uma sensação de relaxamento e foco.

## 🚀 Tecnologias Utilizadas

- **Frontend:** Flutter & Dart
- **UI/UX:** Componentes Material 3 e fontes Google Fonts (Outfit e Lora)
- **Containerização:** Docker (Dockerfile configurado para servidor web Nginx)
- **CI/CD:** Pipeline automatizada de 3 estágios usando GitHub Actions (Build/Test, Staging e Produção)

## 🛠️ Como executar localmente

1. Certifique-se de ter o Flutter instalado em sua máquina.
2. Clone este repositório e instale as dependências:
   ```bash
   flutter pub get
   ```
3. Execute o aplicativo:
   ```bash
   flutter run
   ```

### Executando com Docker

Se preferir rodar a versão web em um container:
```bash
docker build -t reflecta-app .
docker run -p 8080:80 reflecta-app
```
Acesse `http://localhost:8080` no seu navegador.
