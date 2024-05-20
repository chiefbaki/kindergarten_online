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

  /// `Cameras`
  String get cameras {
    return Intl.message(
      'Cameras',
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

  /// `Creativity`
  String get creativity {
    return Intl.message(
      'Creativity',
      name: 'creativity',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registration {
    return Intl.message(
      'Registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Kindergarten:`
  String get kindergarten {
    return Intl.message(
      'Kindergarten:',
      name: 'kindergarten',
      desc: '',
      args: [],
    );
  }

  /// `Name and address`
  String get nameAndAddress {
    return Intl.message(
      'Name and address',
      name: 'nameAndAddress',
      desc: '',
      args: [],
    );
  }

  /// `Group:`
  String get group {
    return Intl.message(
      'Group:',
      name: 'group',
      desc: '',
      args: [],
    );
  }

  /// `Choose group/class`
  String get chooseGroupOrClass {
    return Intl.message(
      'Choose group/class',
      name: 'chooseGroupOrClass',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?  `
  String get alreadyHaveAnAcc {
    return Intl.message(
      'Already have an account?  ',
      name: 'alreadyHaveAnAcc',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Children: `
  String get children {
    return Intl.message(
      'Children: ',
      name: 'children',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get online {
    return Intl.message(
      'Online',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `My contacts`
  String get myContacts {
    return Intl.message(
      'My contacts',
      name: 'myContacts',
      desc: '',
      args: [],
    );
  }

  /// `Create a group`
  String get createGroup {
    return Intl.message(
      'Create a group',
      name: 'createGroup',
      desc: '',
      args: [],
    );
  }

  /// `User's profile`
  String get usersprofile {
    return Intl.message(
      'User\'s profile',
      name: 'usersprofile',
      desc: '',
      args: [],
    );
  }

  /// `Input message`
  String get inputMessage {
    return Intl.message(
      'Input message',
      name: 'inputMessage',
      desc: '',
      args: [],
    );
  }

  /// `5 years old`
  String get age {
    return Intl.message(
      '5 years old',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noConnection {
    return Intl.message(
      'No internet connection',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Your contact list is empty`
  String get contactIsEmpty {
    return Intl.message(
      'Your contact list is empty',
      name: 'contactIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Пусто`
  String get empty {
    return Intl.message(
      'Пусто',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Your chat list is empty`
  String get chatListIsEmpty {
    return Intl.message(
      'Your chat list is empty',
      name: 'chatListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Payment receipts`
  String get paymentReceipts {
    return Intl.message(
      'Payment receipts',
      name: 'paymentReceipts',
      desc: '',
      args: [],
    );
  }

  /// `Attendace`
  String get attendace {
    return Intl.message(
      'Attendace',
      name: 'attendace',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get shedule {
    return Intl.message(
      'Schedule',
      name: 'shedule',
      desc: '',
      args: [],
    );
  }

  /// `Goods / Services`
  String get productsAndServices {
    return Intl.message(
      'Goods / Services',
      name: 'productsAndServices',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get popular {
    return Intl.message(
      'Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Catalog`
  String get catalog {
    return Intl.message(
      'Catalog',
      name: 'catalog',
      desc: '',
      args: [],
    );
  }

  /// `Favourite`
  String get favourite {
    return Intl.message(
      'Favourite',
      name: 'favourite',
      desc: '',
      args: [],
    );
  }

  /// `This section is empty`
  String get thisSectionIsEmpty {
    return Intl.message(
      'This section is empty',
      name: 'thisSectionIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Catalog of product and services`
  String get catalogOfProductAndServices {
    return Intl.message(
      'Catalog of product and services',
      name: 'catalogOfProductAndServices',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Site`
  String get site {
    return Intl.message(
      'Site',
      name: 'site',
      desc: '',
      args: [],
    );
  }

  /// `Time of work`
  String get timeOfWork {
    return Intl.message(
      'Time of work',
      name: 'timeOfWork',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buy {
    return Intl.message(
      'Buy',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Cctv`
  String get cameraName {
    return Intl.message(
      'Cctv',
      name: 'cameraName',
      desc: '',
      args: [],
    );
  }

  /// `Old password:`
  String get oldPass {
    return Intl.message(
      'Old password:',
      name: 'oldPass',
      desc: '',
      args: [],
    );
  }

  /// `Old password`
  String get oldPassField {
    return Intl.message(
      'Old password',
      name: 'oldPassField',
      desc: '',
      args: [],
    );
  }

  /// `New password:`
  String get newPass {
    return Intl.message(
      'New password:',
      name: 'newPass',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassField {
    return Intl.message(
      'New password',
      name: 'newPassField',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password:`
  String get confirmNewPass {
    return Intl.message(
      'Confirm new password:',
      name: 'confirmNewPass',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get confirmNewPassField {
    return Intl.message(
      'Confirm new password',
      name: 'confirmNewPassField',
      desc: '',
      args: [],
    );
  }

  /// `Save the changes`
  String get saveChanges {
    return Intl.message(
      'Save the changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Wrong`
  String get wrong {
    return Intl.message(
      'Wrong',
      name: 'wrong',
      desc: '',
      args: [],
    );
  }

  /// `Check login and password`
  String get checkLoginAndPass {
    return Intl.message(
      'Check login and password',
      name: 'checkLoginAndPass',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `CCTV`
  String get cctv {
    return Intl.message(
      'CCTV',
      name: 'cctv',
      desc: '',
      args: [],
    );
  }

  /// `Timetable of classes`
  String get timetableOfClasses {
    return Intl.message(
      'Timetable of classes',
      name: 'timetableOfClasses',
      desc: '',
      args: [],
    );
  }

  /// `News feed`
  String get newsFeed {
    return Intl.message(
      'News feed',
      name: 'newsFeed',
      desc: '',
      args: [],
    );
  }

  /// `Good and services`
  String get goodsAndServices {
    return Intl.message(
      'Good and services',
      name: 'goodsAndServices',
      desc: '',
      args: [],
    );
  }

  /// `Chats with parents`
  String get ChatsWithParents {
    return Intl.message(
      'Chats with parents',
      name: 'ChatsWithParents',
      desc: '',
      args: [],
    );
  }

  /// `Reference Information`
  String get referenceInformation {
    return Intl.message(
      'Reference Information',
      name: 'referenceInformation',
      desc: '',
      args: [],
    );
  }

  /// `technical support questions`
  String get technicalSupportQuestions {
    return Intl.message(
      'technical support questions',
      name: 'technicalSupportQuestions',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Inside`
  String get inside {
    return Intl.message(
      'Inside',
      name: 'inside',
      desc: '',
      args: [],
    );
  }

  /// `Outside`
  String get outside {
    return Intl.message(
      'Outside',
      name: 'outside',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
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
      Locale.fromSubtags(languageCode: 'ky'),
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
