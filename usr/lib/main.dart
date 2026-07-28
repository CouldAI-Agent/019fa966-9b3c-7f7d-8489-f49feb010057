import 'package:flutter/material.dart';

void main() {
  runApp(const DescribingPeopleApp());
}

class DescribingPeopleApp extends StatelessWidget {
  const DescribingPeopleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Describing People - Grade 10',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainMenu(),
      },
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materi: Describing People'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Bahasa Inggris Kelas 10 SLTA',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          _buildMenuCard(
            context,
            '1. Vocabulary',
            'Kosa kata untuk mendeskripsikan penampilan fisik dan kepribadian seseorang.',
            Icons.book,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VocabularyScreen()),
            ),
          ),
          _buildMenuCard(
            context,
            '2. Grammar Focus',
            'Tata bahasa yang digunakan (to be, have/has, adjectives).',
            Icons.rule,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GrammarScreen()),
            ),
          ),
          _buildMenuCard(
            context,
            '3. Examples',
            'Contoh teks deskriptif tentang seseorang.',
            Icons.text_snippet,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ExamplesScreen()),
            ),
          ),
          _buildMenuCard(
            context,
            '4. Quiz',
            'Latihan soal untuk menguji pemahamanmu.',
            Icons.quiz,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const QuizScreen()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, String subtitle, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Icon(icon, color: Theme.of(context).colorScheme.primary),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}

class VocabularyScreen extends StatelessWidget {
  const VocabularyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vocabulary')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text('Physical Appearance (Penampilan Fisik)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          ListTile(title: Text('Height & Build (Tinggi & Bentuk Tubuh)')),
          ListTile(title: Text('• Tall = Tinggi\n• Short = Pendek\n• Slim/Thin = Langsing/Kurus\n• Fat/Chubby = Gemuk/Tembem\n• Muscular = Berotot'), dense: true),
          Divider(),
          ListTile(title: Text('Hair (Rambut)')),
          ListTile(title: Text('• Long/Short = Panjang/Pendek\n• Straight/Curly/Wavy = Lurus/Keriting/Berombak\n• Bald = Botak\n• Black/Blonde/Brown = Hitam/Pirang/Coklat'), dense: true),
          Divider(),
          ListTile(title: Text('Face & Eyes (Wajah & Mata)')),
          ListTile(title: Text('• Round/Oval face = Wajah bulat/oval\n• Pointed nose = Hidung mancung\n• Flat nose = Hidung pesek\n• Slanted eyes = Mata sipit'), dense: true),
          
          SizedBox(height: 20),
          Text('Personality (Kepribadian)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          ListTile(title: Text('• Friendly = Ramah\n• Helpful = Suka menolong\n• Polite = Sopan\n• Arrogant = Sombong\n• Shy = Pemalu\n• Funny = Lucu/Humoris\n• Smart/Clever = Pintar\n• Diligent = Rajin\n• Lazy = Malas'), dense: true),
        ],
      ),
    );
  }
}

class GrammarScreen extends StatelessWidget {
  const GrammarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grammar Focus')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text('1. Menggunakan "To Be" (is/am/are)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text('Digunakan untuk mendeskripsikan sifat (adjective) atau keadaan.'),
          SizedBox(height: 10),
          Card(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Rumus: Subject + to be (is/am/are) + Adjective\n\nContoh:\n- He is tall. (Dia tinggi)\n- She is very polite. (Dia sangat sopan)\n- They are friendly. (Mereka ramah)'),
            ),
          ),
          SizedBox(height: 20),
          Text('2. Menggunakan "Have / Has"', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text('Digunakan untuk menyebutkan ciri-ciri fisik yang dimiliki (noun phrase).'),
          SizedBox(height: 10),
          Card(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Rumus: Subject + have/has + Noun Phrase\n\nCatatan:\n- Have: I, You, They, We\n- Has: He, She, It\n\nContoh:\n- She has long straight hair. (Dia memiliki rambut panjang lurus)\n- He has a pointed nose. (Dia memiliki hidung mancung)\n- I have brown eyes. (Saya memiliki mata coklat)'),
            ),
          ),
        ],
      ),
    );
  }
}

class ExamplesScreen extends StatelessWidget {
  const ExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Examples')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text('Descriptive Text Example', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Best Friend', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 10),
                  Text('I have a best friend named Sarah. She is 16 years old. She is a very beautiful girl. She is tall and slim. She has long curly black hair and beautiful brown eyes. She also has a sweet smile with dimples on her cheeks.\n\nSarah is a very kind and friendly person. She is always ready to help me when I have problems. She is also smart and diligent, she always gets good grades in class. I am very happy to have a friend like her.'),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Text('Analisis:', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('- Physical Appearance: beautiful, tall, slim, long curly black hair, brown eyes, dimples.'),
          Text('- Personality: kind, friendly, smart, diligent.'),
          Text('- Grammar: "She is tall" (to be), "She has long curly black hair" (has).'),
        ],
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _answered = false;
  String _feedback = '';

  final List<Map<String, Object>> _questions = [
    {
      'question': 'Which word describes a person who loves to help others?',
      'options': ['Lazy', 'Helpful', 'Arrogant', 'Shy'],
      'answer': 'Helpful',
    },
    {
      'question': 'Complete the sentence: "My sister ___ long wavy hair."',
      'options': ['is', 'are', 'has', 'have'],
      'answer': 'has',
    },
    {
      'question': 'Translate to English: "Dia (laki-laki) sangat ramah dan pintar."',
      'options': ['He is very friendly and smart.', 'He has very friendly and smart.', 'She is very friendly and smart.', 'He is very lazy and shy.'],
      'answer': 'He is very friendly and smart.',
    },
  ];

  void _submitAnswer(String selectedAnswer) {
    if (_answered) return;
    
    setState(() {
      _answered = true;
      if (selectedAnswer == _questions[_currentQuestionIndex]['answer']) {
        _score++;
        _feedback = 'Correct! 🎉';
      } else {
        _feedback = 'Incorrect. The correct answer is: ${_questions[_currentQuestionIndex]['answer']}';
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _answered = false;
        _feedback = '';
      } else {
        // Show result
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Quiz Finished!'),
            content: Text('Your score: $_score out of ${_questions.length}'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: const Text('Back to Menu'),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_currentQuestionIndex];
    final options = question['options'] as List<String>;

    return Scaffold(
      appBar: AppBar(title: const Text('Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Question ${_currentQuestionIndex + 1} of ${_questions.length}', style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text(question['question'] as String, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 24),
            ...options.map((option) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ElevatedButton(
                onPressed: _answered ? null : () => _submitAnswer(option),
                child: Text(option),
              ),
            )),
            const Spacer(),
            if (_answered) ...[
              Text(_feedback, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: _feedback.contains('Correct') ? Colors.green : Colors.red)),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _nextQuestion,
                child: Text(_currentQuestionIndex < _questions.length - 1 ? 'Next Question' : 'Finish'),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
