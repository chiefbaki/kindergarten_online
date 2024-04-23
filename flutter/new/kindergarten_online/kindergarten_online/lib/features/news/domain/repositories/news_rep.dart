import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/news/domain/entities/news_entity.dart';

abstract interface class NewsRep {
  Future<DataState<NewsEntity>> getNews();
}
