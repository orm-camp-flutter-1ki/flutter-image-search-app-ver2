import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../data/model/image_item.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(false) bool isLoading,
    @Default([]) List<ImageItem> imageItems,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json);
}