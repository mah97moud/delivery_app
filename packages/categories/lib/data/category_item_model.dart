import 'dart:convert';

import 'package:equatable/equatable.dart';

class CategoryItemModel extends Equatable {
  final int? id;
  final String? image;
  final String? title;
  final double? price;
  final bool? inFavourits;

  const CategoryItemModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.inFavourits,
  });

  factory CategoryItemModel.fromMap(Map<String, dynamic> data) {
    return CategoryItemModel(
      id: data['id'] as int?,
      image: data['image'] as String?,
      title: data['title'] as String?,
      price: (data['price'] as num?)?.toDouble(),
      inFavourits: data['inFavourits'] as bool?,
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'title': title,
        'price': price,
        'inFavourits': inFavourits,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CategoryItemModel].
  factory CategoryItemModel.fromJson(String data) {
    return CategoryItemModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CategoryItemModel] to a JSON string.
  String toJson() => json.encode(toMap());

  CategoryItemModel copyWith({
    int? id,
    String? image,
    String? title,
    double? price,
    bool? inFavourits,
  }) {
    return CategoryItemModel(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      price: price ?? this.price,
      inFavourits: inFavourits ?? this.inFavourits,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, image, title, price, inFavourits];
}
