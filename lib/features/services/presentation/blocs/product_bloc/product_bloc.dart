import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/features/services/domain/usecases/product_usecase.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductUseCase _useCase;
  ProductBloc(this._useCase) : super(const _Initial()) {
    _getProduct();
  }

  void _getProduct() {
    on<ProductEvent>((event, emit) async {
      emit(const ProductState.loading());
      final dataState = await _useCase(param: event.query);
      if (dataState is DataSuccess && dataState.data!.results!.isNotEmpty) {
        emit(ProductState.success(
            entity: dataState.data ?? const ProductEntity()));
      } else if (dataState is DataFailed) {
        emit(ProductState.failure(error: dataState.message ?? ""));
      }
    });
  }
}
