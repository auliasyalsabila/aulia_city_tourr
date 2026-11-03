
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'City Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Tour'),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                'Galeri City Tour',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    ClipRect(
                      child: Image.network(
                        'https://picsum.photos/id/162/300/200',
                        height: 300,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 16),

                    ClipRect(
                      child: Image.network(
                        'https://picsum.photos/id/164/300/200',
                        height: 300,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 16),

                    ClipRect(
                      child: Image.network(
                        'https://picsum.photos/id/174/300/200',
                        height: 300,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
