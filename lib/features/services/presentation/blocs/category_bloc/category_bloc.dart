import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/services/domain/entities/category_entity.dart';
import 'package:kindergarten_online/features/services/domain/usecases/category_usecase.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryUseCase _useCase;
  CategoryBloc(this._useCase) : super(const _Initial()) {
    _category();
  }

  void _category() {
    on<CategoryEvent>((event, emit) async {
      emit(const CategoryState.loading());
      final dataState = await _useCase();
      if (dataState is DataSuccess && dataState.data!.result!.isNotEmpty) {
        emit(CategoryState.success(
            entity: dataState.data ?? const CategoryEntity()));
      } else if (dataState is DataFailed) {
        emit(CategoryState.failure(error: dataState.message.toString()));
      }
    });
  }
}
