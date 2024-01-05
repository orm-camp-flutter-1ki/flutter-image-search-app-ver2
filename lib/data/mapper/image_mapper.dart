import '../dto/pixabay_dto.dart';
import '../model/image_item.dart';

extension HitsToImageItem on Hits {
  ImageItem toImageItem() {
    return ImageItem(
      tags: tags ?? '',
      imageUrl: previewURL ?? '',
      id: id as int,
    );
  }
}
