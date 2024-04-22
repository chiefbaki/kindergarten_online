import 'package:flutter/widgets.dart';
import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginUseCase implements UseCase<DataState<TokenEntity>, LoginReqDto> {
  final LoginRep _repository;

  LoginUseCase({required LoginRep repository}) : _repository = repository;

  @override
  Future<DataState<TokenDto>> call({required LoginReqDto param}) async {
    debugPrint(param.password);
    debugPrint(" Use case ${param.phone}");
    return await _repository.getLogin(entity: param);
  }
}
