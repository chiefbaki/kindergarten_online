import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/news/domain/entities/news_entity.dart';

abstract interface class NewsRep {
  Future<DataState<NewsEntity>> getNews();
}
