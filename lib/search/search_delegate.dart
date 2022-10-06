import 'package:flutter/material.dart';

class MovieSearchDelegate extends SearchDelegate {

  @override
  String get searchFieldLabel => 'Buscar películas';

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      Text('Build Actions')
    ];
          
  }

  @override
  Widget? buildLeading(BuildContext context) {
    
    return Text('build Leading');
    
  }

  @override
  Widget buildResults(BuildContext context) {
    
    return Text('build Results');

    
  }

  @override
  Widget buildSuggestions(BuildContext context) {
      return Text('build Suggestions: $query');

  }

}