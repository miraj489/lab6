import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart'; // Add this import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab 6 work',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lab 6 work'), 
          backgroundColor: const Color.fromARGB(255, 228, 16, 9), 
        ),
        backgroundColor: const Color(0xFFE3E8FF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded( 
              child: Align(
                alignment: Alignment.center, 
                child: CachedNetworkImage(
                  imageUrl: "https://diablodesign.eu/images/DiabloDesign/blog/online-photo-editor/v2-polarr.webp",
                  placeholder: (context, url) => const CircularProgressIndicator(), 
                  errorWidget: (context, url, error) => const Icon(Icons.error), 
                  fit: BoxFit.contain, 
                ),
              ),
            ),
            const SizedBox(height: 20), 
            Expanded( 
              child: Align(
                alignment: Alignment.center, 
                child: CachedNetworkImage(
                  imageUrl: "https://static1.cbrimages.com/wordpress/wp-content/uploads/2024/03/boa-hancock-talks-excitedly-while-blushing.jpg",
                  placeholder: (context, url) => const CircularProgressIndicator(), 
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}