import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ReflectaApp());
}

class ReflectaApp extends StatelessWidget {
  const ReflectaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reflecta - Inteligência Emocional',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E0F59), // Deep rich purple
          brightness: Brightness.dark,
          primary: const Color(0xFFB388FF),
          secondary: const Color(0xFF00BFA5), // Teal accent
          background: const Color(0xFF121212),
          surface: const Color(0xFF1E1E1E),
        ),
        textTheme: GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme),
      ),
      home: const HomePage(),
    );
  }
}

class Advice {
  final String text;
  final String author;
  final String category;

  Advice({required this.text, required this.author, required this.category});
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final List<Advice> _advices = [
    Advice(
      text: "Conhecer a si mesmo é o começo de toda a sabedoria.",
      author: "Aristóteles",
      category: "Autoconhecimento",
    ),
    Advice(
      text: "A inteligência emocional é a capacidade de perceber os seus próprios sentimentos e os dos outros, de nos motivarmos e gerirmos bem as emoções dentro de nós.",
      author: "Daniel Goleman",
      category: "Inteligência Emocional",
    ),
    Advice(
      text: "Entre o estímulo e a resposta há um espaço. Nesse espaço está o nosso poder de escolher a nossa resposta.",
      author: "Viktor E. Frankl",
      category: "Gestão Emocional",
    ),
    Advice(
      text: "A empatia é ver com os olhos de outro, ouvir com os ouvidos de outro, e sentir com o coração de outro.",
      author: "Alfred Adler",
      category: "Empatia",
    ),
    Advice(
      text: "Não somos responsáveis apenas pelo que fazemos, mas também pelo que deixamos de fazer.",
      author: "Molière",
      category: "Responsabilidade",
    ),
    Advice(
      text: "Tudo o que nos irrita nos outros pode nos levar a uma compreensão de nós mesmos.",
      author: "Carl Jung",
      category: "Autoconhecimento",
    ),
    Advice(
      text: "As pessoas esquecerão o que você disse, esquecerão o que você fez, mas nunca esquecerão como você as fez sentir.",
      author: "Maya Angelou",
      category: "Empatia",
    ),
    Advice(
      text: "A vulnerabilidade não é fraqueza; é a nossa maior medida de coragem.",
      author: "Brené Brown",
      category: "Vulnerabilidade",
    ),
    Advice(
      text: "Quem olha para fora, sonha; quem olha para dentro, desperta.",
      author: "Carl Jung",
      category: "Autoconhecimento",
    ),
    Advice(
      text: "O paradoxo curioso é que quando eu me aceito exatamente como sou, então eu posso mudar.",
      author: "Carl Rogers",
      category: "Aceitação",
    ),
    Advice(
      text: "Você não pode parar as ondas, mas pode aprender a surfar.",
      author: "Jon Kabat-Zinn",
      category: "Atenção Plena",
    ),
    Advice(
      text: "Quase tudo voltará a funcionar se você desligar por alguns minutos, inclusive você.",
      author: "Anne Lamott",
      category: "Autocuidado",
    ),
    Advice(
      text: "A coragem não é a ausência do medo, mas o triunfo sobre ele.",
      author: "Nelson Mandela",
      category: "Resiliência",
    ),
    Advice(
      text: "Aquele que é mestre de si mesmo é maior do que aquele que conquista o mundo.",
      author: "Buda",
      category: "Autocontrole",
    ),
    Advice(
      text: "Ninguém pode fazer com que você se sinta inferior sem o seu consentimento.",
      author: "Eleanor Roosevelt",
      category: "Autoconfiança",
    ),
    Advice(
      text: "Os sentimentos vêm e vão como nuvens num céu ventoso. A respiração consciente é a minha âncora.",
      author: "Thich Nhat Hanh",
      category: "Gestão Emocional",
    ),
    Advice(
      text: "Sempre que você estiver prestes a apontar um defeito em outra pessoa, faça a si mesmo a pergunta: qual defeito meu se parece com o que estou a criticar?",
      author: "Marco Aurélio",
      category: "Autoconhecimento",
    ),
    Advice(
      text: "Não somos perturbados pelas coisas, mas pela visão que temos delas.",
      author: "Epiteto",
      category: "Perspetiva",
    ),
    Advice(
      text: "Cuidar de si mesmo não é auto-indulgência, é auto-preservação.",
      author: "Audre Lorde",
      category: "Autocuidado",
    ),
    Advice(
      text: "A mudança ocorre quando a dor de permanecer o mesmo é maior do que a dor de mudar.",
      author: "Tony Robbins",
      category: "Crescimento Pessoal",
    ),
    // ==========================================
    // Categoria: Comunidade e Empatia (Ubuntu)
    // ==========================================
    Advice(
      text: "Se quer ir rápido, vá sozinho. Se quer ir longe, vá acompanhado.",
      author: "Provérbio Africano",
      category: "Comunidade",
    ),
    Advice(
      text: "O machado esquece, mas a árvore recorda.",
      author: "Provérbio Shona (Zimbábue)",
      category: "Empatia e Perdão",
    ),
    Advice(
      text: "Quando dois elefantes lutam, é a relva que sofre.",
      author: "Provérbio Swahili",
      category: "Impacto das Emoções",
    ),
    Advice(
      text: "Um único feixe de lenha não faz uma fogueira.",
      author: "Provérbio Suaíli",
      category: "Conexão",
    ),

    // ==========================================
    // Categoria: Resiliência e Paciência
    // ==========================================
    Advice(
      text: "O vento não quebra uma árvore que sabe curvar-se.",
      author: "Provérbio Sukuma (Tanzânia)",
      category: "Resiliência",
    ),
    Advice(
      text: "Por mais longa que seja a noite, o sol sempre nascerá.",
      author: "Provérbio Mandinga (África Ocidental)",
      category: "Esperança",
    ),
    Advice(
      text: "O rio enche-se com pequenos riachos.",
      author: "Provérbio Africano",
      category: "Paciência",
    ),
    Advice(
      text: "A chuva molha a pele do leopardo, mas não lava as suas manchas.",
      author: "Provérbio Ashanti (Gana)",
      category: "Autenticidade e Força",
    ),

    // ==========================================
    // Categoria: Autoconhecimento e Responsabilidade
    // ==========================================
    Advice(
      text: "Quando não há inimigo dentro de nós, os inimigos de fora não nos podem fazer mal.",
      author: "Provérbio Africano",
      category: "Autoconhecimento",
    ),
    Advice(
      text: "Aquele que não sabe dançar diz que o tambor está a tocar mal.",
      author: "Provérbio Ashanti (Gana)",
      category: "Autorresponsabilidade",
    ),
    Advice(
      text: "Não chames à floresta de abrigo apenas quando chove.",
      author: "Provérbio Africano",
      category: "Gratidão",
    ),
    Advice(
      text: "O olho não pode ver o próprio olho; é preciso um espelho para isso.",
      author: "Provérbio Africano",
      category: "Auto-reflexão",
    ),

    // ==========================================
    // Categoria: Crescimento e Ação
    // ==========================================
    Advice(
      text: "O conhecimento é como um jardim: se não for cultivado, não pode ser colhido.",
      author: "Provérbio Africano",
      category: "Crescimento Pessoal",
    ),
    Advice(
      text: "Não olhes para onde caíste, mas sim para onde escorregaste.",
      author: "Provérbio Africano",
      category: "Aprendizagem",
    ),
    Advice(
      text: "Saber é melhor do que imaginar.",
      author: "Provérbio Swahili",
      category: "Clareza Mental",
    ),
    Advice(
      text: "Um homem que usa a força tem medo de usar a mente.",
      author: "Provérbio Queniano",
      category: "Inteligência Emocional",
    ),
    Advice(
      text: "O momento ideal para plantar uma árvore foi há vinte anos. O segundo melhor momento é agora.",
      author: "Provérbio Africano",
      category: "Ação",
    )
  ];

  late Advice _currentAdvice;
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _currentAdvice = _getRandomAdvice();
    
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Advice _getRandomAdvice() {
    final random = Random();
    return _advices[random.nextInt(_advices.length)];
  }

  void _generateNewAdvice() {
    setState(() {
      Advice newAdvice;
      do {
        newAdvice = _getRandomAdvice();
      } while (newAdvice == _currentAdvice && _advices.length > 1);
      
      _currentAdvice = newAdvice;
    });
    
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1A1A2E), // Dark Navy
              Color(0xFF16213E), // Lighter Navy
              Color(0xFF0F3460), // Deep Blue
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reflecta',
                          style: GoogleFonts.outfit(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          'Sua jornada interior',
                          style: GoogleFonts.outfit(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.spa, color: Color(0xFF00BFA5)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Center(
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Container(
                        padding: const EdgeInsets.all(32.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.1),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                _currentAdvice.category.toUpperCase(),
                                style: GoogleFonts.outfit(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.primary,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            Text(
                              "\"${_currentAdvice.text}\"",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lora(
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 32),
                            Text(
                              "— ${_currentAdvice.author}",
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: ElevatedButton(
                  onPressed: _generateNewAdvice,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                    shadowColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.auto_awesome),
                      const SizedBox(width: 12),
                      Text(
                        'NOVO CONSELHO',
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
