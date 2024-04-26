import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/services/domain/entities/category_entity.dart';
import 'package:kindergarten_online/features/services/domain/usecases/category_usecase.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryUseCase _useCase;
  CategoryCubit(this._useCase) : super(const CategoryState.initial());

  Future<void> category() async {
    emit(const CategoryState.loading());
    final dataState = await _useCase();
    if (dataState is DataSuccess && dataState.data!.result!.isNotEmpty) {
      emit(CategoryState.success(
          entity: dataState.data ?? const CategoryEntity()));
    } else if (dataState is DataFailed) {
      emit(CategoryState.failure(error: dataState.message.toString()));
    }
  }
}