import 'dart:ui';

import 'package:language_code/src/language_codes.dart';

/// This package help you get the current language code and locale of
/// the device.
class LanguageCode {
  LanguageCode._();

  static LanguageCodes? _testCode;

  /// Using this method if you want to set a specific [LanguageCodes] for testing.
  /// Just set it to `null` if you want to use the real value.
  static void setTestCode([LanguageCodes? testCode]) {
    _testCode = testCode;
  }

  /// Get current language code of the device. This [rawCode] may contains the
  /// '-' or '_' character, script code and country code.
  ///
  /// If you want to ensure that the code is supported by this package, you
  /// need to use [code] or [locale].
  static Locale get rawLocale =>
      _testCode?.locale ?? PlatformDispatcher.instance.locale;

  /// Get current language code of the device. This [rawCode] may contains the
  /// '-' or '_' character, script code and country code.
  ///
  /// If you want to ensure that the code is supported by this package, you
  /// need to use [code] or [locale].
  static String get rawCode => rawLocale.toString();

  /// Get the language code as [LanguageCodes].
  static LanguageCodes get code =>
      _testCode ?? LanguageCodes.fromLocale(rawLocale);

  /// Get current language locale of the device
  static Locale get locale => code.locale;
}
