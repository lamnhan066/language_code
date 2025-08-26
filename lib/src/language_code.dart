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
    final locale =
        _testLocale ?? _testCode?.locale ?? PlatformDispatcher.instance.locale;

    // Normalize "C" or "POSIX" locales to English (US).
    final deviceLocaleString = locale.toString().toUpperCase();
    if (deviceLocaleString == 'C' || deviceLocaleString == 'POSIX') {
      return const Locale('en', 'US');
    }

    return locale;
  }

  /// The device language as a [LanguageCodes] enum.
  ///
  /// Resolution order:
  /// 1. Match the full [rawLocale].
  /// 2. Fallback to [Locale.languageCode].
  /// 3. Throws [StateError] if no match is found.
  static LanguageCodes get code => LanguageCodes.fromLocale(
        rawLocale,
        orElse: () => LanguageCodes.fromCode(rawLocale.languageCode),
      );

  /// Get the device language as [LanguageCodes], with an optional [defaultCode].
  ///
  /// - First tries to match the full [rawLocale].
  /// - If that fails, falls back to [Locale.languageCode].
  /// - If no match is found:
  ///   - Returns [defaultCode] if provided.
  ///   - Otherwise returns [LanguageCodes.und].
  static LanguageCodes tryCode({
    LanguageCodes defaultCode = LanguageCodes.und,
  }) {
    return LanguageCodes.fromLocale(
      rawLocale,
      orElse: () => LanguageCodes.fromCode(
        rawLocale.languageCode,
        orElse: () => defaultCode,
      ),
    );
  }

  /// The normalized [Locale] supported by [LanguageCodes].
  ///
  /// Always corresponds to [LanguageCodes.locale].
  static Locale get locale => code.locale;
}
