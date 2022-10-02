
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:micartelera/models/models.dart';

class MoviesProvider extends ChangeNotifier {

  String _apikey = 'e374ebad2940fe709a86a8eadbd5aff5';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> OnDisplayMovies = [];

  MoviesProvider() {
    print('Movies Provider inicializado');

    this.getOnDisplayMovies();

  }

  getOnDisplayMovies() async {
    var url =
      Uri.https(_baseUrl, '3/movie/now_playing', {
        'api_key': _apikey,
        'language': _language,
        'page': '1'
      });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    print( nowPlayingResponse.results[1].title);

    OnDisplayMovies = nowPlayingResponse.results;
    notifyListeners(); // para avisar a todos los widgets que utlizan la data, si se actualiza
  }

}