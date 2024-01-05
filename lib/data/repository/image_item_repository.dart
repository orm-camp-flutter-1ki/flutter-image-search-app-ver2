import 'package:image_search_app2/data/model/image_item.dart';

import '../../core/result.dart';

abstract interface class ImageItemRepository {
  Future<Result<List<ImageItem>>> getImageItems(String query);
}
