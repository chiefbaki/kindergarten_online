import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/services/domain/entities/product_entity.dart';

part 'by_category_event.dart';
part 'by_category_state.dart';
part 'by_category_bloc.freezed.dart';

class ByCategoryBloc extends Bloc<ByCategoryEvent, ByCategoryState> {
  ByCategoryBloc() : super(const _Initial()) {
    on<ByCategoryEvent>((event, emit) async {});
  }
}
