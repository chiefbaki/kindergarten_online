import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/news/domain/entities/news_entity.dart';
import 'package:kindergarten_online/features/news/domain/usecases/news_usecase.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsUseCase _useCase;
  NewsCubit(this._useCase) : super(const NewsState.initial());

  Future<void> news() async {
    emit(const NewsState.loading());
    final dataState = await _useCase();
    if (dataState is DataSuccess) {
      emit(NewsState.success(entity: dataState.data ?? const NewsEntity()));
    } else if (dataState is DataFailed) {
      emit(NewsState.failure(error: dataState.message.toString()));
    }
  }
}
