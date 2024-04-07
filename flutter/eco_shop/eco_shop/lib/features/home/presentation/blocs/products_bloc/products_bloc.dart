import 'package:eco_shop/features/home/data/models/products_dto.dart';
import 'package:eco_shop/features/home/domain/usecases/products_usecase.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_event.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsUseCase _useCase;
  ProductsBloc({required ProductsUseCase useCase})
      : _useCase = useCase,
        super(const ProductsState.inital()) {
    _getProducts();
  }

  void _getProducts() {
    return on<GetProducts>((event, emit) async {
      emit(const ProductsState.loading());
      try {
        final List<ProductsDto> products =
            await _useCase(event.byCategory, event.byName);

        emit(ProductsState.success(products: products));
      } catch (e) {
        emit(ProductsState.failure(error: e.toString()));
      }
    });
  }
}
