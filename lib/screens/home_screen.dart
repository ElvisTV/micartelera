import 'package:flutter/material.dart';
import 'package:micartelera/providers/movies_provider.dart';
import 'package:micartelera/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../search/search_delegate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

    getmuestra(moviesProvider.popularMovies.length.toInt());


    return Scaffold(
        appBar: AppBar(
            title: const Text('Peliculas en cines'),
            elevation: 0,
            actions: [
              IconButton(
                icon: const Icon(Icons.search_outlined),
                onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate())
                
              )
            ]),
        body: SingleChildScrollView(
            child: Column(
              children: [
                //Tarjetas principales
                CardSwiper(movies: moviesProvider.OnDisplayMovies),

                //Slider de Peliculas
                MovieSlider(
                  movies: moviesProvider.popularMovies,
                  title: 'Populares',
                  onNextPage: () => moviesProvider.getPopularMovies()
                ),

              ],
        )));
  }
}


getmuestra(int valor) {
  print('aquí es del home: $valor');
}