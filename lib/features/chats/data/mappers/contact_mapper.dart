import 'package:kindergarten_online/features/chats/data/dto/contact_dto.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entity.dart';

extension ToEntityExt on ContactDto {
  ContactEntity toEntity() => ContactEntity(
      count: count, results: results.map((e) => e.toEntity()).toList());
}

extension ResultsToEntityExt on ContactResultsDto {
  ContactResultsEntity toEntity() => ContactResultsEntity(
      firstName: firstName,
      lastName: lastName,
      id: id,
      phone: phone,
      avatar: avatar,
      childrens: childrens.map((e) => e.toEntity()).toList());
}

extension ChildrensToEntityExt on ContactChildrensDto {
  ContactChildrensEntity toEntity() => ContactChildrensEntity(
        firstName: firstName,
        id: id,
        lastName: lastName,
        group: group.toEntity(),
      );
}

extension GroupToEntityExt on ChildrensGroupDto {
  ChildrensGroupEntity toEntity() => ChildrensGroupEntity(
        id: id,
        name: name,
        kindergarten: kindergarten,
      );
}
