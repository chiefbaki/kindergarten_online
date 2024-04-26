// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CameraRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CameraPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    CreativityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreativityPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfilePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    NewsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailsRouteArgs>(
          orElse: () => const NewsDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsDetailsPage(
          key: args.key,
          date: args.date,
          title: args.title,
          content: args.content,
          img: args.img,
        ),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsPage(),
      );
    },
    PersonalAccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalAccountPage(),
      );
    },
    PoliticsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PoliticsPage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductDetailPage(),
      );
    },
    RegistrRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrPage(),
      );
    },
    ScheduleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SchedulePage(),
      );
    },
    ServicesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ServicesPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [CameraPage]
class CameraRoute extends PageRouteInfo<void> {
  const CameraRoute({List<PageRouteInfo>? children})
      : super(
          CameraRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    Key? key,
    String? title,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<CategoryRouteArgs> page =
      PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    this.title,
  });

  final Key? key;

  final String? title;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [CreativityPage]
class CreativityRoute extends PageRouteInfo<void> {
  const CreativityRoute({List<PageRouteInfo>? children})
      : super(
          CreativityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreativityRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfilePage]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsDetailsPage]
class NewsDetailsRoute extends PageRouteInfo<NewsDetailsRouteArgs> {
  NewsDetailsRoute({
    Key? key,
    String? date,
    String? title,
    String? content,
    String? img,
    List<PageRouteInfo>? children,
  }) : super(
          NewsDetailsRoute.name,
          args: NewsDetailsRouteArgs(
            key: key,
            date: date,
            title: title,
            content: content,
            img: img,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailsRoute';

  static const PageInfo<NewsDetailsRouteArgs> page =
      PageInfo<NewsDetailsRouteArgs>(name);
}

class NewsDetailsRouteArgs {
  const NewsDetailsRouteArgs({
    this.key,
    this.date,
    this.title,
    this.content,
    this.img,
  });

  final Key? key;

  final String? date;

  final String? title;

  final String? content;

  final String? img;

  @override
  String toString() {
    return 'NewsDetailsRouteArgs{key: $key, date: $date, title: $title, content: $content, img: $img}';
  }
}

/// generated route for
/// [NewsPage]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonalAccountPage]
class PersonalAccountRoute extends PageRouteInfo<void> {
  const PersonalAccountRoute({List<PageRouteInfo>? children})
      : super(
          PersonalAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalAccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PoliticsPage]
class PoliticsRoute extends PageRouteInfo<void> {
  const PoliticsRoute({List<PageRouteInfo>? children})
      : super(
          PoliticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PoliticsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductDetailPage]
class ProductDetailRoute extends PageRouteInfo<void> {
  const ProductDetailRoute({List<PageRouteInfo>? children})
      : super(
          ProductDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrPage]
class RegistrRoute extends PageRouteInfo<void> {
  const RegistrRoute({List<PageRouteInfo>? children})
      : super(
          RegistrRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SchedulePage]
class ScheduleRoute extends PageRouteInfo<void> {
  const ScheduleRoute({List<PageRouteInfo>? children})
      : super(
          ScheduleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ServicesPage]
class ServicesRoute extends PageRouteInfo<void> {
  const ServicesRoute({List<PageRouteInfo>? children})
      : super(
          ServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
