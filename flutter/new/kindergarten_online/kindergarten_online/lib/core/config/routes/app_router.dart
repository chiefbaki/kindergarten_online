import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/login_page.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/main_page.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/registr_page.dart';
import 'package:kindergarten_online/features/camera/presentation/pages/camera_page.dart';
import 'package:kindergarten_online/features/creativity/presentation/pages/creativity_page.dart';
import 'package:kindergarten_online/features/favourite/presentation/pages/favourite_page.dart';
import 'package:kindergarten_online/features/news/presentation/pages/news_details_page.dart';
import 'package:kindergarten_online/features/news/presentation/pages/news_page.dart';
import 'package:kindergarten_online/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:kindergarten_online/features/profile/presentation/pages/personal_account_page.dart';
import 'package:kindergarten_online/features/profile/presentation/pages/politics_info_page.dart';
import 'package:kindergarten_online/features/profile/presentation/pages/settings_page.dart';
import 'package:kindergarten_online/features/schedule/presentation/pages/schedule_page.dart';
import 'package:kindergarten_online/features/services/presentation/pages/services_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Main
        AutoRoute(
          page: MainRoute.page,
        ),
        // Auth
        AutoRoute(
          page: LoginRoute.page,
          
        ),
        AutoRoute(
          page: RegistrRoute.page,
          initial: true
        ),
        // Camera
        AutoRoute(
          page: CameraRoute.page,
          
        ),
        // News
        AutoRoute(
          page: NewsRoute.page,
          
        ),
        AutoRoute(
          page: NewsDetailsRoute.page,
          
        ),
        // Services
        AutoRoute(
          page: ServicesRoute.page,
          
        ),
        // Favourite
        AutoRoute(
          page: FavouriteRoute.page,
          
        ),
        // Schedule
        AutoRoute(
          page: ScheduleRoute.page,
          
        ),
        // Profile
        AutoRoute(
          page: SettingsRoute.page,
          
        ),
        // Politics info
        AutoRoute(
          page: PoliticsRoute.page,
          
        ),
        // Personal account
        AutoRoute(page: PersonalAccountRoute.page, ),

        // Change password page
        AutoRoute(
          page: EditProfileRoute.page,
        ),

        // Creativity page
        AutoRoute(
          page: CreativityRoute.page,
        )
      ];
}
