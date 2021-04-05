class C_Populares {
  C_Populares({this.title, this.image});

  factory C_Populares.fromJson(Map<String, dynamic> json) {
    final String original_title = json['original_title'];
    final String poster_path = json['poster_path'];

    return C_Populares(title: original_title, image: poster_path);
  }
  final String title;
  final String image;
}
