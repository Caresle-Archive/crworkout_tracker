
import 'package:crworkout_tracker/config/router/menu_item.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    ...appMenuItems.map((route) => route.getGoRoute())
  ]
);