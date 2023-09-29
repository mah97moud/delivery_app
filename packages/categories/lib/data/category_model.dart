import 'dart:convert';

import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String image;
  final String title;
  final int count;
  final String categoryType;

  const CategoryModel({
    required this.image,
    required this.title,
    required this.count,
    required this.categoryType,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> data) => CategoryModel(
        image: data['image'] as String,
        title: data['title'] as String,
        count: data['count'] as int,
        categoryType: data['categoryType'] as String,
      );

  Map<String, dynamic> toMap() => {
        'image': image,
        'title': title,
        'count': count,
        'categoryType': categoryType,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CategoryModel].
  factory CategoryModel.fromJson(String data) {
    return CategoryModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CategoryModel] to a JSON string.
  String toJson() => json.encode(toMap());

  CategoryModel copyWith({
    String? image,
    String? title,
    int? count,
    String? categoryType,
  }) {
    return CategoryModel(
      image: image ?? this.image,
      title: title ?? this.title,
      count: count ?? this.count,
      categoryType: categoryType ?? this.categoryType,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [image, title, count, categoryType];
}
