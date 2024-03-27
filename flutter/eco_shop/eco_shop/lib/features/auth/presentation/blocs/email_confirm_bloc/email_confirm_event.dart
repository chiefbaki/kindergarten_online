part of 'email_confirm_bloc.dart';

sealed class EmailConfirmEvent extends Equatable {
  
}

class GetConfirm extends EmailConfirmEvent {
  final String? code;
  GetConfirm({this.code});

  @override
  List<Object?> get props => [code];
}
