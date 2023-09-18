class FanFavorites {
  bool? status;
  String? message;
  int? timestamp;
  Data? data;

  FanFavorites({this.status, this.message, this.timestamp, this.data});

  FanFavorites.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    timestamp = json['timestamp'];
    data = json['data'] != null ? Data?.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['timestamp'] = timestamp;
    // if (data != null) {
    //   data['data'] = data?.toJson();
    // }
    return data;
  }
}

class Data {
  PageInfo? pageInfo;
  List<ListData>? list;

  Data({this.pageInfo, this.list});

  Data.fromJson(Map<String, dynamic> json) {
    pageInfo =
        json['pageInfo'] != null ? PageInfo?.fromJson(json['pageInfo']) : null;
    if (json['list'] != null) {
      list = <ListData>[];
      json['list'].forEach((v) {
        list?.add(ListData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (pageInfo != null) {
      data['pageInfo'] = pageInfo?.toJson();
    }
    if (list != null) {
      data['list'] = list?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PageInfo {
  bool? hasNextPage;
  String? endCursor;

  PageInfo({this.hasNextPage, this.endCursor});

  PageInfo.fromJson(Map<String, dynamic> json) {
    hasNextPage = json['hasNextPage'];
    endCursor = json['endCursor'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['hasNextPage'] = hasNextPage;
    data['endCursor'] = endCursor;
    return data;
  }
}

class ListData {
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
  dynamic series;
  WatchOptionsByCategory? watchOptionsByCategory;
  LatestTrailer? latestTrailer;
  Plot? plot;
  ReleaseDate? releaseDate;
  TitleCertificate? titleCertificate;
  TitleRuntime? titleRuntime;

  ListData(
      {this.id,
      this.isAdult,
      this.canRateTitle,
      this.originalTitleText,
      this.primaryImage,
      this.ratingsSummary,
      this.releaseYear,
      this.titleEpisode,
      this.titleText,
      this.titleType,
      this.series,
      this.watchOptionsByCategory,
      this.latestTrailer,
      this.plot,
      this.releaseDate,
      this.titleCertificate,
      this.titleRuntime});

  ListData.fromJson(Map<String, dynamic> json) {
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
    series = json['series'];
    watchOptionsByCategory = json['watchOptionsByCategory'] != null
        ? WatchOptionsByCategory?.fromJson(json['watchOptionsByCategory'])
        : null;
    latestTrailer = json['latestTrailer'] != null
        ? LatestTrailer?.fromJson(json['latestTrailer'])
        : null;
    plot = json['plot'] != null ? Plot?.fromJson(json['plot']) : null;
    releaseDate = json['releaseDate'] != null
        ? ReleaseDate?.fromJson(json['releaseDate'])
        : null;
    titleCertificate = json['titleCertificate'] != null
        ? TitleCertificate?.fromJson(json['titleCertificate'])
        : null;
    titleRuntime = json['titleRuntime'] != null
        ? TitleRuntime?.fromJson(json['titleRuntime'])
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
    data['series'] = series;
    if (watchOptionsByCategory != null) {
      data['watchOptionsByCategory'] = watchOptionsByCategory?.toJson();
    }
    if (latestTrailer != null) {
      data['latestTrailer'] = latestTrailer?.toJson();
    }
    if (plot != null) {
      data['plot'] = plot?.toJson();
    }
    if (releaseDate != null) {
      data['releaseDate'] = releaseDate?.toJson();
    }
    if (titleCertificate != null) {
      data['titleCertificate'] = titleCertificate?.toJson();
    }
    if (titleRuntime != null) {
      data['titleRuntime'] = titleRuntime?.toJson();
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

class WatchOptionsByCategory {
  List<CategorizedWatchOptionsList>? categorizedWatchOptionsList;

  WatchOptionsByCategory({this.categorizedWatchOptionsList});

  WatchOptionsByCategory.fromJson(Map<String, dynamic> json) {
    if (json['categorizedWatchOptionsList'] != null) {
      categorizedWatchOptionsList = <CategorizedWatchOptionsList>[];
      json['categorizedWatchOptionsList'].forEach((v) {
        categorizedWatchOptionsList
            ?.add(CategorizedWatchOptionsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (categorizedWatchOptionsList != null) {
      data['categorizedWatchOptionsList'] =
          categorizedWatchOptionsList?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategorizedWatchOptionsList {
  List<WatchOptions>? watchOptions;

  CategorizedWatchOptionsList({this.watchOptions});

  CategorizedWatchOptionsList.fromJson(Map<String, dynamic> json) {
    if (json['watchOptions'] != null) {
      watchOptions = <WatchOptions>[];
      json['watchOptions'].forEach((v) {
        watchOptions?.add(WatchOptions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (watchOptions != null) {
      data['watchOptions'] = watchOptions?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WatchOptions {
  Provider? provider;
  Description? title;
  Description? description;
  Description? shortDescription;
  String? link;

  WatchOptions(
      {this.provider,
      this.title,
      this.description,
      this.shortDescription,
      this.link});

  WatchOptions.fromJson(Map<String, dynamic> json) {
    provider =
        json['provider'] != null ? Provider?.fromJson(json['provider']) : null;
    title = json['title'] != null ? Description?.fromJson(json['title']) : null;
    description = json['description'] != null
        ? Description?.fromJson(json['description'])
        : null;
    shortDescription = json['shortDescription'] != null
        ? Description?.fromJson(json['shortDescription'])
        : null;
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (provider != null) {
      data['provider'] = provider?.toJson();
    }
    if (title != null) {
      data['title'] = title?.toJson();
    }
    if (description != null) {
      data['description'] = description?.toJson();
    }
    if (shortDescription != null) {
      data['shortDescription'] = shortDescription?.toJson();
    }
    data['link'] = link;
    return data;
  }
}

class Provider {
  String? id;
  String? categoryType;
  Description? description;
  Description? name;
  String? refTagFragment;
  Logos? logos;

  Provider(
      {this.id,
      this.categoryType,
      this.description,
      this.name,
      this.refTagFragment,
      this.logos});

  Provider.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryType = json['categoryType'];
    description = json['description'] != null
        ? Description?.fromJson(json['description'])
        : null;
    name = json['name'] != null ? Description?.fromJson(json['name']) : null;
    refTagFragment = json['refTagFragment'];
    logos = json['logos'] != null ? Logos?.fromJson(json['logos']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['categoryType'] = categoryType;
    if (description != null) {
      data['description'] = description?.toJson();
    }
    if (name != null) {
      data['name'] = name?.toJson();
    }
    data['refTagFragment'] = refTagFragment;
    if (logos != null) {
      data['logos'] = logos?.toJson();
    }
    return data;
  }
}

class Description {
  String? value;

  Description({this.value});

  Description.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}

class Logos {
  Icon? icon;
  Icon? slate;

  Logos({this.icon, this.slate});

  Logos.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] != null ? Icon?.fromJson(json['icon']) : null;
    slate = json['slate'] != null ? Icon?.fromJson(json['slate']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (icon != null) {
      data['icon'] = icon?.toJson();
    }
    if (slate != null) {
      data['slate'] = slate?.toJson();
    }
    return data;
  }
}

class Icon {
  String? url;
  int? width;
  int? height;

  Icon({this.url, this.width, this.height});

  Icon.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    return data;
  }
}

class LatestTrailer {
  String? id;
  ContentType? contentType;
  String? createdDate;
  Description? description;
  PrimaryImage? primaryImage;
  PrimaryTitleFragment? primaryTitleFragment;
  Description? name;
  Runtime? runtime;

  LatestTrailer(
      {this.id,
      this.contentType,
      this.createdDate,
      this.description,
      this.primaryImage,
      this.primaryTitleFragment,
      this.name,
      this.runtime});

  LatestTrailer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    contentType = json['contentType'] != null
        ? ContentType?.fromJson(json['contentType'])
        : null;
    createdDate = json['createdDate'];
    description = json['description'] != null
        ? Description?.fromJson(json['description'])
        : null;
    primaryImage = json['primaryImage'] != null
        ? PrimaryImage?.fromJson(json['primaryImage'])
        : null;
    primaryTitleFragment = json['primaryTitleFragment'] != null
        ? PrimaryTitleFragment?.fromJson(json['primaryTitleFragment'])
        : null;
    name = json['name'] != null ? Description?.fromJson(json['name']) : null;
    runtime =
        json['runtime'] != null ? Runtime?.fromJson(json['runtime']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    if (contentType != null) {
      data['contentType'] = contentType?.toJson();
    }
    data['createdDate'] = createdDate;
    if (description != null) {
      data['description'] = description?.toJson();
    }
    if (primaryImage != null) {
      data['primaryImage'] = primaryImage?.toJson();
    }
    if (primaryTitleFragment != null) {
      data['primaryTitleFragment'] = primaryTitleFragment?.toJson();
    }
    if (name != null) {
      data['name'] = name?.toJson();
    }
    if (runtime != null) {
      data['runtime'] = runtime?.toJson();
    }
    return data;
  }
}

class ContentType {
  String? id;
  Description? displayName;

  ContentType({this.id, this.displayName});

  ContentType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['displayName'] != null
        ? Description?.fromJson(json['displayName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    if (displayName != null) {
      data['displayName'] = displayName?.toJson();
    }
    return data;
  }
}

class LatestTrailerPrimaryImage {
  String? imageUrl;
  int? imageWidth;
  int? imageHeight;

  LatestTrailerPrimaryImage({this.imageUrl, this.imageWidth, this.imageHeight});

  LatestTrailerPrimaryImage.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['imageUrl'] = imageUrl;
    data['imageWidth'] = imageWidth;
    data['imageHeight'] = imageHeight;
    return data;
  }
}

class PrimaryTitleFragment {
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
  dynamic series;

  PrimaryTitleFragment(
      {this.id,
      this.isAdult,
      this.canRateTitle,
      this.originalTitleText,
      this.primaryImage,
      this.ratingsSummary,
      this.releaseYear,
      this.titleEpisode,
      this.titleText,
      this.titleType,
      this.series});

  PrimaryTitleFragment.fromJson(Map<String, dynamic> json) {
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
    series = json['series'];
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
    data['series'] = series;
    return data;
  }
}

class Runtime {
  String? unit;
  int? value;

  Runtime({this.unit, this.value});

  Runtime.fromJson(Map<String, dynamic> json) {
    unit = json['unit'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['unit'] = unit;
    data['value'] = value;
    return data;
  }
}

class Plot {
  String? id;
  dynamic author;
  Value? plotText;
  CorrectionLink? correctionLink;
  CorrectionLink? reportingLink;

  Plot(
      {this.id,
      this.author,
      this.plotText,
      this.correctionLink,
      this.reportingLink});

  Plot.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    author = json['author'];
    plotText =
        json['plotText'] != null ? Value?.fromJson(json['plotText']) : null;
    correctionLink = json['correctionLink'] != null
        ? CorrectionLink?.fromJson(json['correctionLink'])
        : null;
    reportingLink = json['reportingLink'] != null
        ? CorrectionLink?.fromJson(json['reportingLink'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['author'] = author;
    if (plotText != null) {
      data['plotText'] = plotText?.toJson();
    }
    if (correctionLink != null) {
      data['correctionLink'] = correctionLink?.toJson();
    }
    if (reportingLink != null) {
      data['reportingLink'] = reportingLink?.toJson();
    }
    return data;
  }
}

class CorrectionLink {
  String? url;

  CorrectionLink({this.url});

  CorrectionLink.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class ReleaseDate {
  int? day;
  int? month;
  int? year;
  Country? country;
  dynamic restriction;
  List<OriginalTitleText>? releaseAttributes;

  ReleaseDate(
      {this.day,
      this.month,
      this.year,
      this.country,
      this.restriction,
      this.releaseAttributes});

  ReleaseDate.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    month = json['month'];
    year = json['year'];
    country =
        json['country'] != null ? Country?.fromJson(json['country']) : null;
    restriction = json['restriction'];
    if (json['releaseAttributes'] != null) {
      releaseAttributes = <OriginalTitleText>[];
      json['releaseAttributes'].forEach((v) {
        releaseAttributes?.add(OriginalTitleText.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['day'] = day;
    data['month'] = month;
    data['year'] = year;
    if (country != null) {
      data['country'] = country?.toJson();
    }
    data['restriction'] = restriction;
    if (releaseAttributes != null) {
      data['releaseAttributes'] =
          releaseAttributes?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Country {
  String? id;
  String? text;

  Country({this.id, this.text});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['text'] = text;
    return data;
  }
}

class TitleCertificate {
  String? rating;
  Country? certificateCountry;
  String? ratingReason;

  TitleCertificate({this.rating, this.certificateCountry, this.ratingReason});

  TitleCertificate.fromJson(Map<String, dynamic> json) {
    rating = json['rating'];
    certificateCountry = json['certificateCountry'] != null
        ? Country?.fromJson(json['certificateCountry'])
        : null;
    ratingReason = json['ratingReason'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['rating'] = rating;
    if (certificateCountry != null) {
      data['certificateCountry'] = certificateCountry?.toJson();
    }
    data['ratingReason'] = ratingReason;
    return data;
  }
}

class TitleRuntime {
  int? seconds;
  DisplayableProperty? displayableProperty;

  TitleRuntime({this.seconds, this.displayableProperty});

  TitleRuntime.fromJson(Map<String, dynamic> json) {
    seconds = json['seconds'];
    displayableProperty = json['displayableProperty'] != null
        ? DisplayableProperty?.fromJson(json['displayableProperty'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['seconds'] = seconds;
    if (displayableProperty != null) {
      data['displayableProperty'] = displayableProperty?.toJson();
    }
    return data;
  }
}

class TitleRuntimeDisplayableProperty {
  List<Value>? qualifiersInMarkdownList;

  TitleRuntimeDisplayableProperty({this.qualifiersInMarkdownList});

  TitleRuntimeDisplayableProperty.fromJson(Map<String, dynamic> json) {
    if (json['qualifiersInMarkdownList'] != null) {
      qualifiersInMarkdownList = <Value>[];
      json['qualifiersInMarkdownList'].forEach((v) {
        qualifiersInMarkdownList?.add(Value.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (qualifiersInMarkdownList != null) {
      data['qualifiersInMarkdownList'] =
          qualifiersInMarkdownList?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
