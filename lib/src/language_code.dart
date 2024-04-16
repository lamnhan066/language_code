import 'dart:ui';

import 'package:language_code/src/language_codes.dart';

/// This package help you get the current language code and locale of the device.
class LanguageCode {
  LanguageCode._(); // coverage:ignore-line

  static LanguageCodes? _testCode;
  static Locale? _testLocale;

  /// Using this method if you want to set a specific [LanguageCodes] for testing.
  /// Just set it to `null` if you want to use the real value.
  static void setTestCode([LanguageCodes? testCode]) {
    assert(testCode == null || _testLocale == null, 'Only `setTestCode` or `setTestLocale` can be used at the same time');
    _testCode = testCode;
  }

  static void setTestLocale([Locale? testLocale]) {
     assert(testLocale == null || _testCode == null, 'Only `setTestCode` or `setTestLocale` can be used at the same time');
    _testLocale = testLocale;
  }

  /// Get current language as [Locale] of the device.
  ///
  /// This [Locale] may be not supported by the [LanguageCodes]. If you want to ensure
  /// that the code is supported by this package, use [code] or [locale] instead.
  static Locale get rawLocale => _testLocale ?? _testCode?.locale ?? PlatformDispatcher.instance.locale;

  /// Returns a string representing the locale of the device.
  ///
  /// This identifier happens to be a valid Unicode Locale Identifier using
  /// underscores as separator, however it is intended to be used for debugging
  /// purposes only. For parsable results, use [rawLanguageTag] instead.
  ///
  /// If you want to ensure that the code is supported by this package,
  /// use [code] or [locale] instead.
  @Deprecated('Use `rawLocale.toString()` instead') // coverage:ignore-line
  static String get rawCode => rawLocale.toString(); // coverage:ignore-line

  /// Get the language of the device as [LanguageCodes].
  ///
  /// Use the [rawLocale] to get [LanguageCodes] first, then use [rawLocale.languageCode]
  /// if the [rawLocale] is unavailable. If there is no available [LanguageCodes], throw a [StateError].
  static LanguageCodes get code =>
      LanguageCodes.fromLocale(rawLocale, orElse: () => LanguageCodes.fromCode(rawLocale.languageCode));

  /// Get current language of the device as [Locale] that is supported by [LanguageCodes].
  ///
  /// Use the [rawLocale] to get [LanguageCodes] first, then use [rawLocale.languageCode]
  /// if the [rawLocale] is unavailable. If there is no available [LanguageCodes], throw a [StateError].
  static Locale get locale => code.locale;
}
