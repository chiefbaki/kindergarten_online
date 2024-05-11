// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ChatMessagesListEntity with EquatableMixin {
  final int? count;
  final List<ResultsEntity>? results;
  ChatMessagesListEntity({this.count, this.results});

  @override
  List<Object?> get props => [count, results];
}

class ChatMessagesResult with EquatableMixin {
  @override
  List<Object?> get props => [];
}

class ResultsEntity with EquatableMixin {
  final int? id;
  final SenderEntity? sender;
  final RecipientEntity? recipient;
  final RoomEntity? room;
  final String? content;
  final String? timestamp;
  final String? modified;
  ResultsEntity(
      {this.id,
      this.sender,
      this.recipient,
      this.room,
      this.content,
      this.modified,
      this.timestamp});

  @override
  List<Object?> get props =>
      [id, sender, recipient, room, content, timestamp, modified];
}

class SenderEntity with EquatableMixin {
  final int? id;
  final String? phone;
  SenderEntity({
    this.id,
    this.phone,
  });

  @override
  List<Object?> get props => [id, phone];
}

class RecipientEntity with EquatableMixin {
  final int? id;
  final String? phone;
  RecipientEntity({
    this.id,
    this.phone,
  });

  @override
  List<Object?> get props => [id, phone];
}

class RoomEntity with EquatableMixin {
  final int? id;
  final String? name;
  RoomEntity({
    this.id,
    this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
