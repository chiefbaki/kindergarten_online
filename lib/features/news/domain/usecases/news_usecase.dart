import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/news/domain/entities/news_entity.dart';
import 'package:kindergarten_online/features/news/domain/repositories/news_rep.dart';

class NewsUseCase implements UseCase<DataState<NewsEntity>, void> {
  final NewsRep _repository;
  NewsUseCase(this._repository);
  @override
  Future<DataState<NewsEntity>> call({void param}) async {
    return _repository.getNews();
  }
}
