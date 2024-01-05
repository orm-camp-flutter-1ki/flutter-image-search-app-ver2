import 'package:flutter/material.dart';

import '../../data/model/image_item.dart';

class DetailScreen extends StatelessWidget {
  final ImageItem imageItem;

  const DetailScreen({
    super.key,
    required this.imageItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imageItem.tags),
      ),
      body: Hero(
        tag: imageItem.id,
        child: Image.network(
          imageItem.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
