import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  Widget _stat(String number, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'app2_sit_08',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/67.jpg'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _stat('10', 'โพสต์'),
                        _stat('666', 'ผู้ติดตาม'),
                        _stat('2222', 'กำลังติดตาม'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),


              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'sit1/2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text('นักศึกษาแผนกเทคโนโลยีสารสนเทศ'),
                  Text(' น้ำพึ่งเรือเสือพึ่งตื่น '),
                ],
              ),
              const SizedBox(height: 12),


              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('ติดตาม'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('ข้อความ'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),


              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.grid_on),
                  Icon(Icons.person_pin),
                ],
              ),
              const SizedBox(height: 8),


              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: [
                  Image.network('https://i.pinimg.com/736x/2c/6b/7c/2c6b7c58ada62f5de3ada81ee0d5a0a8.jpg',
                      fit: BoxFit.cover),
                  Image.network('https://i.pinimg.com/736x/7e/72/0f/7e720f6bd08d9b918b16b20c1cbed554.jpg',
                      fit: BoxFit.cover),
                    Image.network('https://i.pinimg.com/736x/27/d1/91/27d191b75c0b8db8c634a83398173ee7.jpg',
                      fit: BoxFit.cover),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}