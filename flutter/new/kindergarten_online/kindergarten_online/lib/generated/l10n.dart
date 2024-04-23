// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome!`
  String get welcome {
    return Intl.message(
      'Welcome!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `To use our app please\nsign in or sign up,\nif your are the first time.`
  String get mainPageAdvice {
    return Intl.message(
      'To use our app please\nsign in or sign up,\nif your are the first time.',
      name: 'mainPageAdvice',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get enter {
    return Intl.message(
      'Enter',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Phone number:`
  String get phoneNumber {
    return Intl.message(
      'Phone number:',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Input number`
  String get inputNumber {
    return Intl.message(
      'Input number',
      name: 'inputNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password:`
  String get password {
    return Intl.message(
      'Password:',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Input password`
  String get inputPassword {
    return Intl.message(
      'Input password',
      name: 'inputPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget password or number?`
  String get forgetPassOrNumber {
    return Intl.message(
      'Forget password or number?',
      name: 'forgetPassOrNumber',
      desc: '',
      args: [],
    );
  }

  /// `Restore the password`
  String get restorePassword {
    return Intl.message(
      'Restore the password',
      name: 'restorePassword',
      desc: '',
      args: [],
    );
  }

  /// `Restore the number`
  String get restoreNumber {
    return Intl.message(
      'Restore the number',
      name: 'restoreNumber',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPassword {
    return Intl.message(
      'Reset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Камеры`
  String get cameras {
    return Intl.message(
      'Камеры',
      name: 'cameras',
      desc: '',
      args: [],
    );
  }

  /// `Favourites`
  String get favourites {
    return Intl.message(
      'Favourites',
      name: 'favourites',
      desc: '',
      args: [],
    );
  }

  /// `New ones first`
  String get newOnesFirst {
    return Intl.message(
      'New ones first',
      name: 'newOnesFirst',
      desc: '',
      args: [],
    );
  }

  /// `Old ones first`
  String get oldOnesFirst {
    return Intl.message(
      'Old ones first',
      name: 'oldOnesFirst',
      desc: '',
      args: [],
    );
  }

  /// `This section is still empty`
  String get thisSectionIsStillEmpty {
    return Intl.message(
      'This section is still empty',
      name: 'thisSectionIsStillEmpty',
      desc: '',
      args: [],
    );
  }

  /// `This window will display\nYour favorite advertisements.`
  String get thisWindowWillDisplay {
    return Intl.message(
      'This window will display\nYour favorite advertisements.',
      name: 'thisWindowWillDisplay',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get account {
    return Intl.message(
      'My Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Chat messages`
  String get chatMessages {
    return Intl.message(
      'Chat messages',
      name: 'chatMessages',
      desc: '',
      args: [],
    );
  }

  /// `New event in the feed`
  String get newsEvents {
    return Intl.message(
      'New event in the feed',
      name: 'newsEvents',
      desc: '',
      args: [],
    );
  }

  /// `light`
  String get light {
    return Intl.message(
      'light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Terms of use`
  String get termsofUse {
    return Intl.message(
      'Terms of use',
      name: 'termsofUse',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Application theme`
  String get applicationTheme {
    return Intl.message(
      'Application theme',
      name: 'applicationTheme',
      desc: '',
      args: [],
    );
  }

  /// `Chat background`
  String get chatBackground {
    return Intl.message(
      'Chat background',
      name: 'chatBackground',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Name:`
  String get name {
    return Intl.message(
      'Name:',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Lastname:`
  String get lastname {
    return Intl.message(
      'Lastname:',
      name: 'lastname',
      desc: '',
      args: [],
    );
  }

  /// `Middlename:`
  String get middleName {
    return Intl.message(
      'Middlename:',
      name: 'middleName',
      desc: '',
      args: [],
    );
  }

  /// `Gender:`
  String get gender {
    return Intl.message(
      'Gender:',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Input name`
  String get inputName {
    return Intl.message(
      'Input name',
      name: 'inputName',
      desc: '',
      args: [],
    );
  }

  /// `Input lastname`
  String get inputLastName {
    return Intl.message(
      'Input lastname',
      name: 'inputLastName',
      desc: '',
      args: [],
    );
  }

  /// `Input middle name`
  String get inputMiddleName {
    return Intl.message(
      'Input middle name',
      name: 'inputMiddleName',
      desc: '',
      args: [],
    );
  }

  /// `Save the changes`
  String get saveTheChanges {
    return Intl.message(
      'Save the changes',
      name: 'saveTheChanges',
      desc: '',
      args: [],
    );
  }

  /// `Data changed`
  String get dataChanged {
    return Intl.message(
      'Data changed',
      name: 'dataChanged',
      desc: '',
      args: [],
    );
  }

  /// `News line`
  String get newsline {
    return Intl.message(
      'News line',
      name: 'newsline',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'kg'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
