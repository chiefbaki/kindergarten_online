import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/features/services/domain/usecases/product_usecase.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductUseCase _useCase;
  ProductCubit(this._useCase) : super(const ProductState.initial());

  Future<void> product() async {
    emit(const ProductState.loading());
    final dataState = await _useCase();
    if (dataState is DataSuccess && dataState.data!.results!.isNotEmpty) {
      emit(ProductState.success(
          entity: dataState.data ?? const ProductEntity()));
    } else if (dataState is DataFailed) {
      emit(ProductState.failure(error: dataState.message ?? ""));
    }
  }
}
