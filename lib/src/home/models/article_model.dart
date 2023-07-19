import 'dart:convert';

import 'package:media_probe/src/common/common.dart' show BaseModel;

ArticleModel articlesFromJson(String str) =>
    ArticleModel.fromJson(json.decode(str));

class ArticleModel {
  String? uri;
  String? url;
  int? id;
  int? assetId;
  String? source;
  DateTime? publishedDate;
  DateTime? updated;
  String? section;
  String? subsection;
  String? nytdsection;
  String? adxKeywords;
  dynamic column;
  String? byline;
  String? type;
  String? title;
  String? articlesAbstract;
  List<String?>? desFacet;
  List<String?>? orgFacet;
  List<String?>? perFacet;
  List<dynamic>? geoFacet;
  List<Media?>? media;
  int? etaId;

  ArticleModel({
    required this.uri,
    required this.url,
    required this.id,
    required this.assetId,
    required this.source,
    required this.publishedDate,
    required this.updated,
    required this.section,
    required this.subsection,
    required this.nytdsection,
    required this.adxKeywords,
    this.column,
    required this.byline,
    required this.type,
    required this.title,
    required this.articlesAbstract,
    required this.desFacet,
    required this.orgFacet,
    required this.perFacet,
    required this.geoFacet,
    required this.media,
    required this.etaId,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        uri: BaseModel.stringConverter(json["uri"]),
        url: BaseModel.stringConverter(json["url"]),
        id: BaseModel.intConverter(json["id"]),
        assetId: BaseModel.intConverter(json["asset_id"]),
        source: BaseModel.stringConverter(json["source"]),
        publishedDate: BaseModel.dateConverter(json["published_date"]),
        updated: BaseModel.dateConverter(json["updated"]),
        section: BaseModel.stringConverter(json["section"]),
        subsection: BaseModel.stringConverter(json["subsection"]),
        nytdsection: BaseModel.stringConverter(json["nytdsection"]),
        adxKeywords: BaseModel.stringConverter(json["adx_keywords"]),
        column: json["column"],
        byline: BaseModel.stringConverter(json["byline"]),
        type: BaseModel.stringConverter(json["type"]),
        title: BaseModel.stringConverter(json["title"]),
        articlesAbstract: BaseModel.stringConverter(json["abstract"]),
        desFacet: BaseModel.listConverter(json["des_facet"])
            .map((e) => e.toString())
            .toList(),
        orgFacet: BaseModel.listConverter(json["org_facet"])
            .map((e) => e.toString())
            .toList(),
        perFacet: BaseModel.listConverter(json["per_facet"])
            .map((e) => e.toString())
            .toList(),
        geoFacet:
            BaseModel.listConverter(json["geo_facet"]).map((e) => e).toList(),
        media: BaseModel.listConverter(json["media"], fallbackValue: [])
            .map((e) => Media.fromJson(e))
            .toList(),
        etaId: BaseModel.intConverter(json["eta_id"]),
      );
}

class Media {
  String? type;
  String? subtype;
  String? caption;
  String? copyright;
  int? approvedForSyndication;
  List<MediaMetadatum> mediaMetadata;

  Media({
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
    required this.approvedForSyndication,
    required this.mediaMetadata,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        type: BaseModel.stringConverter(json["type"]),
        subtype: BaseModel.stringConverter(json["subtype"]),
        caption: BaseModel.stringConverter(json["caption"]),
        copyright: BaseModel.stringConverter(json["copyright"]),
        approvedForSyndication:
            BaseModel.intConverter(json["approved_for_syndication"]),
        mediaMetadata:
            BaseModel.listConverter(json["media-metadata"], fallbackValue: [])
                .map((e) => MediaMetadatum.fromJson(e))
                .toList(),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "subtype": subtype,
        "caption": caption,
        "copyright": copyright,
        "approved_for_syndication": approvedForSyndication,
        "media-metadata":
            List<dynamic>.from(mediaMetadata.map((x) => x.toJson())),
      };
}

class MediaMetadatum {
  String? url;
  String? format;
  int? height;
  int? width;

  MediaMetadatum({
    required this.url,
    required this.format,
    required this.height,
    required this.width,
  });

  factory MediaMetadatum.fromJson(Map<String, dynamic> json) => MediaMetadatum(
        url: BaseModel.stringConverter(json["url"], fallbackValue: ''),
        format: BaseModel.stringConverter(json["format"]),
        height: BaseModel.intConverter(json["height"]),
        width: BaseModel.intConverter(json["width"]),
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "format": format,
        "height": height,
        "width": width,
      };
}
