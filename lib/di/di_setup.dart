import 'package:get_it/get_it.dart';
import 'package:image_search_app2/data/data_source/photo_api.dart';
import 'package:image_search_app2/data/repository/image_item_repository_impl.dart';

import '../data/repository/image_item_repository.dart';
import '../ui/main/main_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<PhotoApi>(PhotoApi());

  getIt.registerSingleton<ImageItemRepository>(
      ImageItemRepositoryImpl(api: getIt<PhotoApi>()));

  getIt.registerFactory<MainViewModel>(
      () => MainViewModel(imageItemRepository: getIt<ImageItemRepository>()));
}
