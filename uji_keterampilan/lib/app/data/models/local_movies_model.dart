class LocalMovies {
  String? title;
  String? imageUrl;
  double? rating;
  String? releaseDate;

  LocalMovies({
    this.title,
    this.imageUrl,
    this.rating,
    this.releaseDate,
  });

  LocalMovies.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imageUrl = json['imageUrl'];
    rating = json['rating'].toDouble();
    releaseDate = json['releaseDate'];
  }
}
