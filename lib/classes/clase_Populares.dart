class C_Populares {
  C_Populares({this.title, this.image, this.description});

  factory C_Populares.fromJson(Map<String, dynamic> json) {
    final String original_title = json['original_title'];
    final String poster_path = json['poster_path'];
    final String overview = json['overview'];

    return C_Populares(
        title: original_title, image: poster_path, description: overview);
  }
  final String title;
  final String image;
  final String description;
}
