import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/services/data/data_sources/remote/remote_services_data.dart';
import 'package:kindergarten_online/features/services/data/mappers/category_mapper.dart';
import 'package:kindergarten_online/features/services/domain/entities/category_entity.dart';
import 'package:kindergarten_online/features/services/domain/repositories/category_rep.dart';

class CategoryImpl implements CategoryRep {
  final RemoteServicesData _remoteServicesData;

  CategoryImpl(this._remoteServicesData);

  @override
  Future<DataState<CategoryEntity>> getCategory() async {
    try {
      final httpResponse = await _remoteServicesData.getCategory();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.toEntity());
      } else {
        return DataFailed(
            message: DioException(
                requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(message: e);
    }
  }
}
