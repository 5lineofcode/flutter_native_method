// To parse this JSON data, do
//
//     final searchLocation = searchLocationFromJson(jsonString);

import 'dart:convert';

class SearchLocation {
  List<Prediction> predictions;
  String status;

  SearchLocation({
    this.predictions,
    this.status,
  });

  factory SearchLocation.fromRawJson(String str) =>
      SearchLocation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchLocation.fromJson(Map<String, dynamic> json) =>
      new SearchLocation(
        predictions: new List<Prediction>.from(
            json["predictions"].map((x) => Prediction.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "predictions":
            new List<dynamic>.from(predictions.map((x) => x.toJson())),
        "status": status,
      };
}

class Prediction {
  String description;
  String id;
  List<MatchedSubstring> matchedSubstrings;
  String placeId;
  String reference;
  StructuredFormatting structuredFormatting;
  List<Term> terms;
  List<String> types;

  Prediction({
    this.description,
    this.id,
    this.matchedSubstrings,
    this.placeId,
    this.reference,
    this.structuredFormatting,
    this.terms,
    this.types,
  });

  factory Prediction.fromRawJson(String str) =>
      Prediction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Prediction.fromJson(Map<String, dynamic> json) => new Prediction(
        description: json["description"],
        id: json["id"],
        matchedSubstrings: new List<MatchedSubstring>.from(
            json["matched_substrings"]
                .map((x) => MatchedSubstring.fromJson(x))),
        placeId: json["place_id"],
        reference: json["reference"],
        structuredFormatting:
            StructuredFormatting.fromJson(json["structured_formatting"]),
        terms: new List<Term>.from(json["terms"].map((x) => Term.fromJson(x))),
        types: new List<String>.from(json["types"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "id": id,
        "matched_substrings":
            new List<dynamic>.from(matchedSubstrings.map((x) => x.toJson())),
        "place_id": placeId,
        "reference": reference,
        "structured_formatting": structuredFormatting.toJson(),
        "terms": new List<dynamic>.from(terms.map((x) => x.toJson())),
        "types": new List<dynamic>.from(types.map((x) => x)),
      };
}

class MatchedSubstring {
  int length;
  int offset;

  MatchedSubstring({
    this.length,
    this.offset,
  });

  factory MatchedSubstring.fromRawJson(String str) =>
      MatchedSubstring.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MatchedSubstring.fromJson(Map<String, dynamic> json) =>
      new MatchedSubstring(
        length: json["length"],
        offset: json["offset"],
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "offset": offset,
      };
}

class StructuredFormatting {
  String mainText;
  List<MatchedSubstring> mainTextMatchedSubstrings;
  String secondaryText;

  StructuredFormatting({
    this.mainText,
    this.mainTextMatchedSubstrings,
    this.secondaryText,
  });

  factory StructuredFormatting.fromRawJson(String str) =>
      StructuredFormatting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      new StructuredFormatting(
        mainText: json["main_text"],
        mainTextMatchedSubstrings: new List<MatchedSubstring>.from(
            json["main_text_matched_substrings"]
                .map((x) => MatchedSubstring.fromJson(x))),
        secondaryText: json["secondary_text"],
      );

  Map<String, dynamic> toJson() => {
        "main_text": mainText,
        "main_text_matched_substrings": new List<dynamic>.from(
            mainTextMatchedSubstrings.map((x) => x.toJson())),
        "secondary_text": secondaryText,
      };
}

class Term {
  int offset;
  String value;

  Term({
    this.offset,
    this.value,
  });

  factory Term.fromRawJson(String str) => Term.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Term.fromJson(Map<String, dynamic> json) => new Term(
        offset: json["offset"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "offset": offset,
        "value": value,
      };
}
