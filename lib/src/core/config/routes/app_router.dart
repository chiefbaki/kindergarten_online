import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/features/attendace/presentation/attendace_page.dart';
import 'package:kindergarten_online/src/features/auth/presentation/pages/login_page.dart';
import 'package:kindergarten_online/src/features/auth/presentation/pages/main_page.dart';
import 'package:kindergarten_online/src/features/auth/presentation/pages/registr_page.dart';
import 'package:kindergarten_online/src/features/auth/presentation/pages/splash_page.dart';
import 'package:kindergarten_online/src/features/camera/presentation/pages/camera_list_page.dart';
import 'package:kindergarten_online/src/features/camera/presentation/pages/camera_page.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/chat_list_entity.dart';
import 'package:kindergarten_online/src/features/chats/presentation/pages/chat_page.dart';
import 'package:kindergarten_online/src/features/chats/presentation/pages/chats_list_page.dart';
import 'package:kindergarten_online/src/features/chats/presentation/pages/contact_info_page.dart';
import 'package:kindergarten_online/src/features/chats/presentation/pages/my_contacts_page.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/pages/creativity_page.dart';
import 'package:kindergarten_online/src/features/news/presentation/pages/news_details_page.dart';
import 'package:kindergarten_online/src/features/news/presentation/pages/news_page.dart';
import 'package:kindergarten_online/src/features/payment_receipts/presentation/payment_receipts.dart';
import 'package:kindergarten_online/src/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:kindergarten_online/src/features/auth/presentation/pages/reset_page.dart';
import 'package:kindergarten_online/src/features/profile/presentation/pages/change_password_page.dart';
import 'package:kindergarten_online/src/features/profile/presentation/pages/personal_account_page.dart';
import 'package:kindergarten_online/src/features/profile/presentation/pages/politics_info_page.dart';
import 'package:kindergarten_online/src/features/profile/presentation/pages/rools_page.dart';
import 'package:kindergarten_online/src/features/profile/presentation/pages/settings_page.dart';
import 'package:kindergarten_online/src/features/schedule/presentation/pages/schedule_page.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/src/features/services/presentation/pages/category_page.dart';
import 'package:kindergarten_online/src/features/services/presentation/pages/product_detail_page.dart';
import 'package:kindergarten_online/src/features/services/presentation/pages/services_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Splash page
        CustomRoute(
          initial: true,
          page: SplashRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),

        // Main
        CustomRoute(
          page: MainRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),

        // Auth
        CustomRoute(
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),

        CustomRoute(
            page: RegistrRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Camera
        CustomRoute(
            
            page: CameraListRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            
            page: CameraRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        
        // News
        CustomRoute(
            page: NewsRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        CustomRoute(
            page: NewsDetailsRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Services
        CustomRoute(
          page: ServicesRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),

        CustomRoute(
            page: CategoryRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Schedule
        CustomRoute(
            page: ScheduleRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Attendance
        CustomRoute(
            page: AttendanceRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Profile
        CustomRoute(
            page: SettingsRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Politics info
        CustomRoute(
            page: PoliticsRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Personal account
        CustomRoute(
            page: PersonalAccountRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Change password page
        CustomRoute(
            page: EditProfileRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Creativity page
        CustomRoute(
            page: CreativityRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Products Info page
        CustomRoute(
            page: ProductDetailRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // List of contacts page
        CustomRoute(
            page: ChatsListRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // My contacts page
        CustomRoute(
          page: MyContactsRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),

        // Contacts info page
        CustomRoute(
            page: ContactInfoRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Contacts info page
        CustomRoute(
            page: RoolsRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Chat page
        CustomRoute(
          page: ChatRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),

        // Payment receipts page
        CustomRoute(
          page: PaymentReceiptsRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),

        CustomRoute(
          page: ChangePasswordRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ];
}
