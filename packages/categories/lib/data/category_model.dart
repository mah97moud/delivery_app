import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String image;
  final String title;
  final int count;

  const CategoryModel(
      {required this.image, required this.title, required this.count});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        image: json['image'] as String,
        title: json['title'] as String,
        count: json['count'] as int,
      );

  Map<String, dynamic> toJson() => {
        'image': image,
        'title': title,
        'count': count,
      };

  CategoryModel copyWith({
    String? image,
    String? title,
    int? count,
  }) {
    return CategoryModel(
      image: image ?? this.image,
      title: title ?? this.title,
      count: count ?? this.count,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [image, title, count];
}
