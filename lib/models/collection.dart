import 'dart:convert';

class Collection {
  String? id;
  String name;
  bool visible;
  Map<int, String> images;

  Collection({
    required this.name,
    required this.visible,
    required this.images,
    this.id,
  });

  factory Collection.fromJson(String str) =>
      Collection.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Collection.fromMap(Map<String, dynamic> json) => Collection(
        name: json["name"],
        visible: json["visible"],
        images: Map<int, String>.from(
            json["images"].asMap().map((k, v) => MapEntry(k, v))),
      );

  Map<String, dynamic> toMap() =>
      {"name": name, "visible": visible, "images": images};
}
