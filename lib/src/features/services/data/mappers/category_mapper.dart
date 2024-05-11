import 'package:kindergarten_online/src/features/services/data/dto/category_dto.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/category_entity.dart';

extension ToEntityExt on CategoryDto {
  CategoryEntity toEntity() => CategoryEntity(
      count: count, result: results.map((e) => e.toEntity()).toList());
}

extension ItemsToEntityExt on CategoryResultDto {
  CategoryResultEntity toEntity() => CategoryResultEntity(id: id, name: name);
}
