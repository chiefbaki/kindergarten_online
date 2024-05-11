import 'package:equatable/equatable.dart';

class ResetReqEntity extends Equatable {
  final String phone;
  final String type;
  const ResetReqEntity({required this.phone, required this.type});

  @override
  List<Object?> get props => [phone, type];
}
