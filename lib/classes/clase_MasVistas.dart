class C_MasVistas {
  C_MasVistas({this.title, this.image});

  factory C_MasVistas.fromJson(Map<String, dynamic> json) {
    final String original_title = json['original_title'];
    final String poster_path = json['poster_path'];

    return C_MasVistas(title: original_title, image: poster_path);
  }
  final String title;
  final String image;
}
