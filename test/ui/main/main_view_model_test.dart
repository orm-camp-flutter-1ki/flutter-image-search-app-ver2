import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_app2/core/result.dart';
import 'package:image_search_app2/data/model/image_item.dart';
import 'package:image_search_app2/data/repository/image_item_repository.dart';
import 'package:image_search_app2/di/di_setup.dart';
import 'package:image_search_app2/ui/main/main_view_model.dart';

void main() {
  setUp(() {
    getIt.registerSingleton<ImageItemRepository>(MockRepository());

    getIt.registerFactory<MainViewModel>(
        () => MainViewModel(imageItemRepository: getIt<ImageItemRepository>()));
  });

  test('ViewModel Test', () async {
    final viewModel = getIt<MainViewModel>();

    expect(viewModel.state.imageItems.length, 0);

    viewModel.fetchImages('query');
    expect(viewModel.state.isLoading, true);

    await await Future.delayed(const Duration(seconds: 1));
    expect(viewModel.state.imageItems.length, 4);
    expect(viewModel.state.isLoading, false);
  });
}

class MockRepository implements ImageItemRepository {
  @override
  Future<Result<List<ImageItem>>> getImageItems(String query) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Result.success([
      ImageItem(tags: 'tags', imageUrl: 'imageUrl', id: 1),
      ImageItem(tags: 'tags', imageUrl: 'imageUrl', id: 1),
      ImageItem(tags: 'tags', imageUrl: 'imageUrl', id: 1),
      ImageItem(tags: 'tags', imageUrl: 'imageUrl', id: 1),
    ]);
  }
}
