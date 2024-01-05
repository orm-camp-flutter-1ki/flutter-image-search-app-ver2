import 'package:go_router/go_router.dart';
import 'package:image_search_app2/data/model/image_item.dart';
import 'package:image_search_app2/ui/detail/detail_screen.dart';
import 'package:provider/provider.dart';

import 'di/di_setup.dart';
import 'ui/main/main_screen.dart';
import 'ui/main/main_view_model.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final imageItem = state.extra as ImageItem;
        return DetailScreen(imageItem: imageItem);
      },
    ),
  ],
);
