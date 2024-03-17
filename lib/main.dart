import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog Cards',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlogScreen(),
    );
  }
}

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Screen'),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return BlogCard(
            title: _getBlogTitle(index),
            content: _getBlogContent(index),
            imageUrl: _getBlogImage(index),
            onTap: () {
              // Navigate to blog details screen
            },
          );
        },
      ),
    );
  }

  String _getBlogTitle(int index) {
    switch (index) {
      case 0:
        return 'Improving Public Speaking Skills';
      case 1:
        return 'Mastering a New Language';
      case 2:
        return 'Effective Business Communication';
      case 3:
        return 'Language Learning Tips';
      case 4:
        return 'Cross-Cultural Communication';
      case 5:
        return 'Language Learning Resources';
      case 6:
        return 'Overcoming Language Barriers';
      default:
        return 'Blog Title';
    }
  }

  String _getBlogImage(int index) {
    switch (index) {
      case 0:
        return 'assets/learn.png';
      case 1:
        return 'assets/communicatiopn.png';
      case 2:
        return 'assets/multiple.png';
      case 3:
        return 'assets/speak.png';
      case 4:
        return 'assets/stage.png';
      case 5:
        return 'assets/usa.png';
      case 6:
        return 'assets/language.png';
      default:
        return '';

    }
  }

  String _getBlogContent(int index) {
    switch (index) {
      case 0:
        return 'Public speaking is the process of communicating information to an audience. It is an essential skill for professionals in various fields, including business, politics, and education. Here are some tips to improve your public speaking skills:';
      case 1:
        return 'Learning a new language can be a rewarding experience that opens up opportunities for personal and professional growth. Whether you want to travel the world, connect with people from different cultures, or advance your career, mastering a new language is a valuable skill.';
      case 2:
        return 'Effective business communication is crucial for success in today\'s competitive marketplace. Clear and concise communication helps build strong relationships with customers, partners, and employees, leading to increased productivity and profitability.';
      case 3:
        return 'Language learning tips can help you become more efficient and effective in acquiring new languages. Whether you\'re learning for personal or professional reasons, incorporating these strategies into your study routine can accelerate your progress and improve your fluency.';
      case 4:
        return 'Cross-cultural communication refers to the exchange of information between individuals from different cultural backgrounds. It plays a vital role in today\'s globalized world, where people from diverse cultures interact in various settings, such as workplaces, educational institutions, and social events.';
      case 5:
        return 'Language learning resources can make the language acquisition process more engaging and accessible. From textbooks and online courses to language exchange programs and immersive experiences, there are many tools and resources available to help you learn a new language.';
      case 6:
        return 'Overcoming language barriers is essential for effective communication in multicultural environments. Whether you\'re traveling abroad, working with international colleagues, or interacting with diverse communities, understanding and addressing language barriers is key to fostering mutual understanding and collaboration.';
      default:
        return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet ipsum in velit vestibulum, ut gravida mauris ultricies.';
    }
  }
}

class BlogCard extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final VoidCallback onTap;

  const BlogCard({
    Key? key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    content,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: TextButton(
                        onPressed: onTap,
                        child: Text(
                          'Read More',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}