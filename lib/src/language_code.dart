import 'dart:ui';

import 'package:language_code/src/language_codes.dart';

/// Provides access to the device's current language and locale
/// as [LanguageCodes] and [Locale].
///
/// Includes test hooks for overriding values in unit tests.
abstract class LanguageCode {
  /// Test code override for testing purposes.
  ///
  /// When set, [rawLocale] will return this code's locale,
  /// and [code] will return this value directly.
  static LanguageCodes? _testCode;

  /// Test locale override for testing purposes.
  ///
  /// When set, [rawLocale] will return this locale value.
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
    final languageCode = locale.languageCode.toUpperCase();
    if (languageCode == 'C' || languageCode == 'POSIX') {
      return const Locale('en', 'US');
    }

    return locale;
  }

  /// The device language as a [LanguageCodes] enum.
  ///
  /// Resolution order:
  /// 1. If [setTestCode] was called, return the test code directly.
  /// 2. Match the full [rawLocale].
  /// 3. Fallback to [Locale.languageCode].
  /// 4. Throws [StateError] if no match is found.
  static LanguageCodes get code {
    // If test code is set, return it directly
    if (_testCode != null) {
      return _testCode!;
    }

    final locale = rawLocale;

    // First, try to match the full locale (including country code, script, etc.)
    try {
      return LanguageCodes.fromLocale(locale);
    } catch (_) {
      // If full locale match fails, fallback to language code only
      try {
        return LanguageCodes.fromCode(locale.languageCode);
      } catch (_) {
        // Provide a comprehensive error message
        throw StateError(
          'No LanguageCodes found for locale: $locale '
          '(languageCode: ${locale.languageCode})',
        );
      }
    }
  }

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
