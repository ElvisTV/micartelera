import  'package:flutter/material.dart';
import 'package:micartelera/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 0,        
        actions: [
          IconButton(
            icon: const Icon( Icons.search_outlined ),
            onPressed: () {}, 
          )

      ]),


      body: Column(
        children: [
          CardSwiper()
        ],
      )
    );
        
  }
}