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

  /// `Товары / Услуги`
  String get productsAndServices {
    return Intl.message(
      'Товары / Услуги',
      name: 'productsAndServices',
      desc: '',
      args: [],
    );
  }

  /// `Популярное`
  String get popular {
    return Intl.message(
      'Популярное',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Каталог`
  String get catalog {
    return Intl.message(
      'Каталог',
      name: 'catalog',
      desc: '',
      args: [],
    );
  }

  /// `Избранное`
  String get favourite {
    return Intl.message(
      'Избранное',
      name: 'favourite',
      desc: '',
      args: [],
    );
  }

  /// `Данный раздел пока пуст`
  String get thisSectionIsEmpty {
    return Intl.message(
      'Данный раздел пока пуст',
      name: 'thisSectionIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Каталог товаров и услуг`
  String get catalogOfProductAndServices {
    return Intl.message(
      'Каталог товаров и услуг',
      name: 'catalogOfProductAndServices',
      desc: '',
      args: [],
    );
  }

  /// `Адрес`
  String get address {
    return Intl.message(
      'Адрес',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Сайт`
  String get site {
    return Intl.message(
      'Сайт',
      name: 'site',
      desc: '',
      args: [],
    );
  }

  /// `Время работы`
  String get timeOfWork {
    return Intl.message(
      'Время работы',
      name: 'timeOfWork',
      desc: '',
      args: [],
    );
  }

  /// `Купить`
  String get buy {
    return Intl.message(
      'Купить',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Видео наблюдение`
  String get cameraName {
    return Intl.message(
      'Видео наблюдение',
      name: 'cameraName',
      desc: '',
      args: [],
    );
  }

  /// `Старый пароль:`
  String get oldPass {
    return Intl.message(
      'Старый пароль:',
      name: 'oldPass',
      desc: '',
      args: [],
    );
  }

  /// `Старый пароль`
  String get oldPassField {
    return Intl.message(
      'Старый пароль',
      name: 'oldPassField',
      desc: '',
      args: [],
    );
  }

  /// `Новый пароль:`
  String get newPass {
    return Intl.message(
      'Новый пароль:',
      name: 'newPass',
      desc: '',
      args: [],
    );
  }

  /// `Новый пароль`
  String get newPassField {
    return Intl.message(
      'Новый пароль',
      name: 'newPassField',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение нового пароля:`
  String get confirmNewPass {
    return Intl.message(
      'Подтверждение нового пароля:',
      name: 'confirmNewPass',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение нового пароля`
  String get confirmNewPassField {
    return Intl.message(
      'Подтверждение нового пароля',
      name: 'confirmNewPassField',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить изменения`
  String get saveChanges {
    return Intl.message(
      'Сохранить изменения',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get wrong {
    return Intl.message(
      'Ошибка',
      name: 'wrong',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, введите корректные имя пользователя и пароль учётной записи. Оба поля зависят от корректности друг друга.`
  String get checkLoginAndPass {
    return Intl.message(
      'Пожалуйста, введите корректные имя пользователя и пароль учётной записи. Оба поля зависят от корректности друг друга.',
      name: 'checkLoginAndPass',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть`
  String get close {
    return Intl.message(
      'Закрыть',
      name: 'close',
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
