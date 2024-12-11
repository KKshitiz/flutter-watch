import 'package:auto_route/annotations.dart';
import 'package:flutter_art/art/envelope/envelope_page.dart';
import 'package:flutter_art/art/nokia-phone/nokia_phone_page.dart';
import 'package:flutter_art/art/watch/watch_page.dart';
import 'package:flutter_art/core/pages/base_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(page: BasePage, initial: true),
    AutoRoute(page: NokiaPhonePage),
    AutoRoute(page: WatchPage),
    AutoRoute(page: EnvelopePage),
  ],
)
class $AppRouter {}
