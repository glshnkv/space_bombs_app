import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:space_bombs_app/screens/home/home_screen.dart';
import 'package:space_bombs_app/screens/levels/levels_screen.dart';
import 'package:space_bombs_app/screens/settings/settings_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: LevelsRoute.page),
  ];
}
