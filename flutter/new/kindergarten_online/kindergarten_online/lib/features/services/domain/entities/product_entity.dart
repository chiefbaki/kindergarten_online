// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int? count;
  final List<ProductResultEntity>? results;
  const ProductEntity({this.count, this.results});

  @override
  List<Object?> get props => [count];
}

class ProductResultEntity extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final String? price;
  final String? address;
  final String? url;
  final List<ProductImagesEntity>? images;
  const ProductResultEntity({
    this.id,
    this.name,
    this.description,
    this.price,
    this.address,
    this.url,
    this.images,
  });

  @override
  List<Object?> get props =>
      [id, name, description, price, address, url, images];
}

class ProductImagesEntity extends Equatable {
  final int? id;
  final String? img;
  const ProductImagesEntity({
    this.id,
    this.img,
  });

  @override
  List<Object?> get props => [id, img];
}
