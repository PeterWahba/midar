// import 'dart:ui';

// import 'package:get/get.dart';

// import '../../core.dart';

// class LocalizationController extends Translations {
//   // here we need to add our default language
//   // static final locale = Locale('ar', 'EG');
//   static final locale = Locale('ar', 'EG');

//   // fallbackLocale saves the day when the locale gets in trouble
//   // static final fallbackLocale = Locale('ar', 'EG');
//   static final fallbackLocale = Locale('ar', 'EG');

//   // Supported languages
//   // Needs to be same order with locales
//   static final langs = [
//     'en_US',
//     'ar_EG',
//   ];

//   // Supported locales
//   // Needs to be same order with langs
//   static final locales = [
//     Locale('en', 'US'),
//     Locale('ar', 'EG'),
//   ];

//   // Keys and their translations
//   // Translations are separated maps in `lang` file
//   @override
//   Map<String, Map<String, String>> get keys => {
//         'en_US': en,
//         'ar_EG': ar,
//       };

//   // Gets locale from language, and updates the locale
//   void changeLocale(String lang) {
//     final locale = _getLocaleFromLanguage(lang);
//     Get.updateLocale(locale!);
//   }

//   // Finds language in `langs` list and returns it as Locale
//   Locale? _getLocaleFromLanguage(String lang) {
//     for (int i = 0; i < langs.length; i++) {
//       if (lang == langs[i]) return locales[i];
//     }
//     return Get.locale;
//   }

//   static int getCurrentLocale() {
//     Locale? currentLocale = Get.locale;
//     int i;
//     for (i = 0; i < locales.length; i++) {
//       if (currentLocale == locales[i]) return i;
//     }
//     return i;
//   }
// }
