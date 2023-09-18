class DataCarousel {
  List<ListData>? data;

  DataCarousel({this.data});

  DataCarousel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ListData>[];
      json['data'].forEach((v) {
        data?.add(ListData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    // if (data != null) {
    //   data['data'] = data?.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class ListData {
  String? title;
  String? imageUrl;
  double? vote;
  String? releaseDate;

  ListData({this.title, this.imageUrl, this.vote, this.releaseDate});

  ListData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imageUrl = json['imageUrl'];
    vote = json['vote'];
    releaseDate = json['releaseDate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['imageUrl'] = imageUrl;
    data['vote'] = vote;
    data['releaseDate'] = releaseDate;
    return data;
  }
}
