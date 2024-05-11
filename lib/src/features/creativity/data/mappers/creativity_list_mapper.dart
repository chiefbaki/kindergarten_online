import 'package:kindergarten_online/src/features/creativity/data/dto/creativity_list_dto.dart';
import 'package:kindergarten_online/src/features/creativity/domain/entities/creativity_list_entity.dart';

extension FromEntityExt on CreativityListEntity {
  CreativityListDto fromEntity() => CreativityListDto(
      count: count ?? 0, results: results!.map((e) => e.fromEntity()).toList());
}

extension _ItemsFromEntityExt on CreativityResultsEntity {
  CreativityResultsDto fromEntity() => CreativityResultsDto(
      id: id ?? 0, name: name ?? "", img: img ?? "", children: children ?? 0);
}

extension ToEntityExt on CreativityListDto {
  CreativityListEntity toEntity() => CreativityListEntity(
      count: count, results: results.map((e) => e.toEntity()).toList());
}

extension _ItemsToEntityExt on CreativityResultsDto {
  CreativityResultsEntity toEntity() =>
      CreativityResultsEntity(id: id, name: name, img: img, children: children);
}
