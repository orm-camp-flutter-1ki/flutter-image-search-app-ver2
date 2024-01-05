import 'package:image_search_app2/core/result.dart';
import 'package:image_search_app2/data/data_source/photo_api.dart';
import 'package:image_search_app2/data/dto/pixabay_dto.dart';
import 'package:image_search_app2/data/mapper/image_mapper.dart';
import 'package:image_search_app2/data/model/image_item.dart';
import 'package:image_search_app2/data/repository/image_item_repository.dart';

class ImageItemRepositoryImpl implements ImageItemRepository {
  final PhotoApi _api;

  const ImageItemRepositoryImpl({
    required PhotoApi api,
  }) : _api = api;

  @override
  Future<Result<List<ImageItem>>> getImageItems(String query) async {
    try {
      final json = await _api.getPhotoInfoJson(query);
      final dto = PixabayDto.fromJson(json);

      if (dto.hits == null) {
        return Result.error(Exception('데이터가 없습니다'));
      }

      return Result.success(dto.hits!.map((e) => e.toImageItem()).toList());
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}
