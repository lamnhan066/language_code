import 'dart:ui';

import 'package:language_code/src/language_codes.dart';

/// Provides access to the device's current language and locale
/// as [LanguageCodes] and [Locale].
///
/// Includes test hooks for overriding values in unit tests.
class LanguageCode {
  LanguageCode._(); // coverage:ignore-line

  static LanguageCodes? _testCode;
  static Locale? _testLocale;

  /// Override the detected language with a specific [LanguageCodes] for testing.
  ///
  /// Pass `null` to restore normal behavior.
  /// Cannot be used at the same time as [setTestLocale].
  static void setTestCode([LanguageCodes? testCode]) {
    assert(
      testCode == null || _testLocale == null,
      'Only `setTestCode` or `setTestLocale` can be used at the same time.',
    );
    _testCode = testCode;
  }

  /// Override the detected locale with a specific [Locale] for testing.
  ///
  /// Pass `null` to restore normal behavior.
  /// Cannot be used at the same time as [setTestCode].
  static void setTestLocale([Locale? testLocale]) {
    assert(
      testLocale == null || _testCode == null,
      'Only `setTestCode` or `setTestLocale` can be used at the same time.',
    );
    _testLocale = testLocale;
  }

  /// The raw [Locale] reported by the device.
  ///
  /// - May not be supported by [LanguageCodes].
  /// - Use [locale] or [code] if you want guaranteed supported values.
  static Locale get rawLocale {
    if (_testLocale != null) return _testLocale!;
    if (_testCode != null) return _testCode!.locale;

    final deviceLocale = PlatformDispatcher.instance.locale;

    // Normalize "C", "POSIX", or empty locales to English (US).
    final deviceLocaleString = deviceLocale.toString().toUpperCase();
    if (deviceLocaleString == 'C' ||
        deviceLocaleString == 'POSIX' ||
        deviceLocaleString.isEmpty) {
      return const Locale('en', 'US');
    }

    return deviceLocale;
  }

  /// Deprecated: use `rawLocale.toString()` instead.
  ///
  /// Returns a string representation of the raw device locale.
  @Deprecated('Use `rawLocale.toString()` instead') // coverage:ignore-line
  static String get rawCode => rawLocale.toString(); // coverage:ignore-line

  /// The device language as a [LanguageCodes] enum.
  ///
  /// Resolution order:
  /// 1. Match the full [rawLocale].
  /// 2. Fallback to `rawLocale.languageCode`.
  /// 3. Throws [StateError] if no match is found.
  static LanguageCodes get code => LanguageCodes.fromLocale(
        rawLocale,
        orElse: () => LanguageCodes.fromCode(rawLocale.languageCode),
      );

  /// The normalized [Locale] supported by [LanguageCodes].
  ///
  /// Always corresponds to [code.locale].
  static Locale get locale => code.locale;
}
