class WhatsStreaming {
  bool? status;
  String? message;
  int? timestamp;
  List<Data>? data;

  WhatsStreaming({this.status, this.message, this.timestamp, this.data});

  WhatsStreaming.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    timestamp = json['timestamp'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['timestamp'] = timestamp;
    // if (data != null) {
    //   data['data'] = data?.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Data {
  String? providerName;
  List<Edges>? edges;

  Data({this.providerName, this.edges});

  Data.fromJson(Map<String, dynamic> json) {
    providerName = json['providerName'];
    if (json['edges'] != null) {
      edges = <Edges>[];
      json['edges'].forEach((v) {
        edges?.add(Edges.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['providerName'] = providerName;
    if (edges != null) {
      data['edges'] = edges?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Edges {
  Title? title;

  Edges({this.title});

  Edges.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? Title?.fromJson(json['title']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (title != null) {
      data['title'] = title?.toJson();
    }
    return data;
  }
}

class Title {
  String? id;
  bool? isAdult;
  CanRateTitle? canRateTitle;
  OriginalTitleText? originalTitleText;
  PrimaryImage? primaryImage;
  RatingsSummary? ratingsSummary;
  ReleaseYear? releaseYear;
  dynamic titleEpisode;
  OriginalTitleText? titleText;
  TitleType? titleType;

  Title(
      {this.id,
      this.isAdult,
      this.canRateTitle,
      this.originalTitleText,
      this.primaryImage,
      this.ratingsSummary,
      this.releaseYear,
      this.titleEpisode,
      this.titleText,
      this.titleType});

  Title.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isAdult = json['isAdult'];
    canRateTitle = json['canRateTitle'] != null
        ? CanRateTitle?.fromJson(json['canRateTitle'])
        : null;
    originalTitleText = json['originalTitleText'] != null
        ? OriginalTitleText?.fromJson(json['originalTitleText'])
        : null;
    primaryImage = json['primaryImage'] != null
        ? PrimaryImage?.fromJson(json['primaryImage'])
        : null;
    ratingsSummary = json['ratingsSummary'] != null
        ? RatingsSummary?.fromJson(json['ratingsSummary'])
        : null;
    releaseYear = json['releaseYear'] != null
        ? ReleaseYear?.fromJson(json['releaseYear'])
        : null;
    titleEpisode = json['titleEpisode'];
    titleText = json['titleText'] != null
        ? OriginalTitleText?.fromJson(json['titleText'])
        : null;
    titleType = json['titleType'] != null
        ? TitleType?.fromJson(json['titleType'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['isAdult'] = isAdult;
    if (canRateTitle != null) {
      data['canRateTitle'] = canRateTitle?.toJson();
    }
    if (originalTitleText != null) {
      data['originalTitleText'] = originalTitleText?.toJson();
    }
    if (primaryImage != null) {
      data['primaryImage'] = primaryImage?.toJson();
    }
    if (ratingsSummary != null) {
      data['ratingsSummary'] = ratingsSummary?.toJson();
    }
    if (releaseYear != null) {
      data['releaseYear'] = releaseYear?.toJson();
    }
    data['titleEpisode'] = titleEpisode;
    if (titleText != null) {
      data['titleText'] = titleText?.toJson();
    }
    if (titleType != null) {
      data['titleType'] = titleType?.toJson();
    }
    return data;
  }
}

class CanRateTitle {
  bool? isRatable;

  CanRateTitle({this.isRatable});

  CanRateTitle.fromJson(Map<String, dynamic> json) {
    isRatable = json['isRatable'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isRatable'] = isRatable;
    return data;
  }
}

class OriginalTitleText {
  String? text;

  OriginalTitleText({this.text});

  OriginalTitleText.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    return data;
  }
}

class PrimaryImage {
  String? id;
  String? imageUrl;
  int? imageWidth;
  int? imageHeight;

  PrimaryImage({this.id, this.imageUrl, this.imageWidth, this.imageHeight});

  PrimaryImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['imageUrl'] = imageUrl;
    data['imageWidth'] = imageWidth;
    data['imageHeight'] = imageHeight;
    return data;
  }
}

class RatingsSummary {
  double? aggregateRating;
  TopRanking? topRanking;
  int? voteCount;

  RatingsSummary({this.aggregateRating, this.topRanking, this.voteCount});

  RatingsSummary.fromJson(Map<String, dynamic> json) {
    if (json['aggregateRating'] != null) {
      aggregateRating = json['aggregateRating'].toDouble();
    }
    topRanking = json['topRanking'] != null
        ? TopRanking?.fromJson(json['topRanking'])
        : null;
    voteCount = json['voteCount'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['aggregateRating'] = aggregateRating;
    if (topRanking != null) {
      data['topRanking'] = topRanking?.toJson();
    }
    data['voteCount'] = voteCount;
    return data;
  }
}

class TopRanking {
  int? rank;

  TopRanking({this.rank});

  TopRanking.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['rank'] = rank;
    return data;
  }
}

class ReleaseYear {
  int? year;
  int? endYear;

  ReleaseYear({this.year, this.endYear});

  ReleaseYear.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    endYear = json['endYear'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['year'] = year;
    data['endYear'] = endYear;
    return data;
  }
}

class TitleType {
  String? id;
  String? text;
  DisplayableProperty? displayableProperty;
  List<Categories>? categories;
  bool? canHaveEpisodes;
  bool? isSeries;
  bool? isEpisode;

  TitleType(
      {this.id,
      this.text,
      this.displayableProperty,
      this.categories,
      this.canHaveEpisodes,
      this.isSeries,
      this.isEpisode});

  TitleType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    displayableProperty = json['displayableProperty'] != null
        ? DisplayableProperty?.fromJson(json['displayableProperty'])
        : null;
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    canHaveEpisodes = json['canHaveEpisodes'];
    isSeries = json['isSeries'];
    isEpisode = json['isEpisode'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['text'] = text;
    if (displayableProperty != null) {
      data['displayableProperty'] = displayableProperty?.toJson();
    }
    if (categories != null) {
      data['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    data['canHaveEpisodes'] = canHaveEpisodes;
    data['isSeries'] = isSeries;
    data['isEpisode'] = isEpisode;
    return data;
  }
}

class DisplayableProperty {
  Value? value;

  DisplayableProperty({this.value});

  DisplayableProperty.fromJson(Map<String, dynamic> json) {
    value = json['value'] != null ? Value?.fromJson(json['value']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (value != null) {
      data['value'] = value?.toJson();
    }
    return data;
  }
}

class Value {
  String? plainText;

  Value({this.plainText});

  Value.fromJson(Map<String, dynamic> json) {
    plainText = json['plainText'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['plainText'] = plainText;
    return data;
  }
}

class Categories {
  String? id;
  String? text;
  String? value;

  Categories({this.id, this.text, this.value});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['text'] = text;
    data['value'] = value;
    return data;
  }
}
