class SearchMovie {
  final String original_title;
  final String release_date;
  final String poster_path;

  SearchMovie({this.original_title, this.release_date, this.poster_path});

  static SearchMovie fromJson(Map json) {
    return SearchMovie(
      original_title: json['original_title'],
      poster_path: json['poster_path'],
      release_date: json['release_date'],
    );
  }

  @override
  String toString() {
    return 'Instance of Country: $original_title';
  }
}
