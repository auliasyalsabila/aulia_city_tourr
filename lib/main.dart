
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//
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

//2. kerangka aplikasi
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

              // 4. Tagline
              const Text(
                'Explore, Enjoy, Experience',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                "Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, "
                    "breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural "
                    "wonders. our city offers a tapestry of experiences that will captivate your senses. jois us in exploring the beauty of our city"
                    "and create memories that will last a lifetime. come and visit our city's treasures today.",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 20),

              // Judul Galeri
              const Text(
                'Galeri City Tour',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              // 3. galeri gambar
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
