import 'package:addicts_movies/classes/search_movies.dart';
import 'package:addicts_movies/service/search_service.dart';
import 'package:flutter/material.dart';

class PantallaSearch extends SearchDelegate<SearchMovie> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => this.query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => this.close(context, null),
    );
  }

  @override
  Widget buildResults2(BuildContext context) {}

  @override
  Widget buildResults(BuildContext context) {
    if (query.trim().length == 0) {
      print('no hay valor en el query');
    }

    final searchService = new SearchService();
    return FutureBuilder(
      future: searchService.getPelicula(query),
      builder: (_, AsyncSnapshot<List<SearchMovie>> snapshot) {
        if (snapshot.hasData) {
          return _showMovies(snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 4,
            ),
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(
      title: Text('Suggestions'),
    );
  }

  Widget _showMovies(List<SearchMovie> movies) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, i) {
        final pelicula = movies[i];

        return ListTile(
          leading: Image.network(
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/' +
                pelicula.poster_path,
            height: 60,
          ),
          title: Text(pelicula.original_title),
          subtitle: Text(pelicula.release_date),
          onTap: () {
            this.close(context, pelicula);
          },
        );
      },
    );
  }
}
