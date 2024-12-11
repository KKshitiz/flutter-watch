// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../art/envelope/envelope_page.dart' as _i4;
import '../../art/nokia-phone/nokia_phone_page.dart' as _i2;
import '../../art/watch/watch_page.dart' as _i3;
import '../pages/base_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BasePage(),
      );
    },
    NokiaPhoneRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.NokiaPhonePage(),
      );
    },
    WatchRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.WatchPage(),
      );
    },
    EnvelopeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EnvelopePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          BaseRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          NokiaPhoneRoute.name,
          path: '/nokia-phone-page',
        ),
        _i5.RouteConfig(
          WatchRoute.name,
          path: '/watch-page',
        ),
        _i5.RouteConfig(
          EnvelopeRoute.name,
          path: '/envelope-page',
        ),
      ];
}

/// generated route for
/// [_i1.BasePage]
class BaseRoute extends _i5.PageRouteInfo<void> {
  const BaseRoute()
      : super(
          BaseRoute.name,
          path: '/',
        );

  static const String name = 'BaseRoute';
}

/// generated route for
/// [_i2.NokiaPhonePage]
class NokiaPhoneRoute extends _i5.PageRouteInfo<void> {
  const NokiaPhoneRoute()
      : super(
          NokiaPhoneRoute.name,
          path: '/nokia-phone-page',
        );

  static const String name = 'NokiaPhoneRoute';
}

/// generated route for
/// [_i3.WatchPage]
class WatchRoute extends _i5.PageRouteInfo<void> {
  const WatchRoute()
      : super(
          WatchRoute.name,
          path: '/watch-page',
        );

  static const String name = 'WatchRoute';
}

/// generated route for
/// [_i4.EnvelopePage]
class EnvelopeRoute extends _i5.PageRouteInfo<void> {
  const EnvelopeRoute()
      : super(
          EnvelopeRoute.name,
          path: '/envelope-page',
        );

  static const String name = 'EnvelopeRoute';
}
