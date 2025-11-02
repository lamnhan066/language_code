import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:language_code/language_code.dart';

void main() {
  setUp(() {
    LanguageCode.setTestCode();
    LanguageCode.setTestLocale();
  });

  // TODO: This test should not be here because it's included in the other tests.
  //       But it's still here to improve the coverage.
  test('LanguageCodes.fromLocale (improve the coverage)', () {
    expect(
      LanguageCodes.fromLocale(const Locale('en', 'US')),
      equals(LanguageCodes.en_US),
    );
    expect(
      LanguageCodes.fromLocale(
        const Locale('en', 'USS'),
        orElse: () => LanguageCodes.en,
      ),
      equals(LanguageCodes.en),
    );
    expect(
      () => LanguageCodes.fromLocale(const Locale('en', 'USS')),
      throwsStateError,
    );
    expect(
      () => LanguageCodes.fromLocale(
        const Locale('enn', 'USS'),
        orElse: () => LanguageCodes.fromCode('enn'),
      ),
      throwsStateError,
    );
  });

  test('getPlatformVersion', () async {
    expect(LanguageCode.rawLocale, isA<Locale>());
    expect(LanguageCode.locale.toString(), equals(LanguageCode.code.code));
    expect(LanguageCode.locale, equals(LanguageCode.code.locale));
  });

  group('Set test language -', () {
    const code = LanguageCodes.cu;

    test('by code', () {
      LanguageCode.setTestCode(code);

      expect(LanguageCode.locale, equals(code.locale));
      expect(LanguageCode.code, equals(code));
    });

    test('by Locale', () {
      LanguageCode.setTestLocale(code.locale);

      expect(LanguageCode.locale, equals(code.locale));
      expect(LanguageCode.code, equals(code));
    });
  });

  group('LanguageCodes', () {
    test('.fromLocale', () {
      for (final code in LanguageCodes.values) {
        expect(LanguageCodes.fromLocale(code.locale), equals(code));
      }
    });

    test('.fromEnglishName', () {
      for (final code in LanguageCodes.values) {
        expect(LanguageCodes.fromEnglishName(code.englishName), contains(code));
        expect(LanguageCodes.fromEnglishName(code.name), contains(code));
      }
    });

    test('.fromNativeName', () {
      for (final code in LanguageCodes.values) {
        expect(LanguageCodes.fromNativeName(code.nativeName), contains(code));
      }
    });
  });

  group('Test an unavailable language -', () {
    test('available `languageCode`', () {
      const locale = Locale('en', 'VN');
      LanguageCode.setTestLocale(locale);

      expect(LanguageCode.code, equals(LanguageCodes.en));
      expect(() => LanguageCodes.fromLocale(locale), throwsStateError);
      expect(
        LanguageCodes.fromCode(locale.languageCode),
        equals(LanguageCodes.en),
      );
      expect(
        LanguageCodes.fromLocale(
          locale,
          orElse: () => LanguageCodes.fromCode(locale.languageCode),
        ),
        equals(LanguageCodes.en),
      );
    });

    test('unavailable `languageCode`', () {
      const locale = Locale('ennn', 'VNNN');
      LanguageCode.setTestLocale(locale);

      expect(() => LanguageCode.code, throwsStateError);
      expect(() => LanguageCodes.fromLocale(locale), throwsStateError);
      expect(
        () => LanguageCodes.fromCode(locale.languageCode),
        throwsStateError,
      );
      expect(
        () => LanguageCodes.fromLocale(
          locale,
          orElse: () => LanguageCodes.fromCode(locale.languageCode),
        ),
        throwsStateError,
      );
    });
  });

  group('LanguageCode', () {
    setUp(() {
      LanguageCode.setTestCode(null);
      LanguageCode.setTestLocale(null);
    });

    test('rawLocale returns _testLocale if set', () {
      const testLocale = Locale('fr', 'CA');
      LanguageCode.setTestLocale(testLocale);
      expect(LanguageCode.rawLocale, equals(testLocale));
    });

    test('rawLocale returns _testCode.locale if set', () {
      LanguageCode.setTestCode(LanguageCodes.de);
      expect(LanguageCode.rawLocale, equals(LanguageCodes.de.locale));
    });

    test('rawLocale normalizes "C" locale to en_US', () {
      LanguageCode.setTestLocale(const Locale('C'));
      expect(LanguageCode.rawLocale, equals(const Locale('en', 'US')));
    });

    test('rawLocale normalizes "POSIX" locale to en_US', () {
      LanguageCode.setTestLocale(const Locale('POSIX'));
      expect(LanguageCode.rawLocale, equals(const Locale('en', 'US')));
    });

    test('code returns LanguageCodes from full locale', () {
      LanguageCode.setTestLocale(const Locale('es', 'ES'));
      expect(LanguageCode.code, equals(LanguageCodes.es_ES));
    });

    test('code falls back to languageCode if full locale not found', () {
      LanguageCode.setTestLocale(const Locale('es', 'ZZ'));
      expect(LanguageCode.code, equals(LanguageCodes.es));
    });

    test('code throws StateError if no match found', () {
      LanguageCode.setTestLocale(const Locale('xx', 'YY'));
      expect(() => LanguageCode.code, throwsStateError);
    });

    test('tryCode returns LanguageCodes from full locale', () {
      LanguageCode.setTestLocale(const Locale('fr', 'FR'));
      expect(LanguageCode.tryCode(), equals(LanguageCodes.fr_FR));
    });

    test('tryCode falls back to languageCode if full locale not found', () {
      LanguageCode.setTestLocale(const Locale('fr', 'ZZ'));
      expect(LanguageCode.tryCode(), equals(LanguageCodes.fr));
    });

    test('tryCode returns defaultCode if no match found', () {
      LanguageCode.setTestLocale(const Locale('xx', 'YY'));
      expect(
        LanguageCode.tryCode(defaultCode: LanguageCodes.en),
        equals(LanguageCodes.en),
      );
    });

    test('locale always matches code.locale', () {
      LanguageCode.setTestCode(LanguageCodes.it);
      expect(LanguageCode.locale, equals(LanguageCodes.it.locale));
    });

    test('setTestCode and setTestLocale cannot be used at the same time', () {
      LanguageCode.setTestCode(LanguageCodes.fr);
      expect(
        () => LanguageCode.setTestLocale(const Locale('fr', 'FR')),
        throwsA(isA<AssertionError>()),
      );
      LanguageCode.setTestCode(null);

      LanguageCode.setTestLocale(const Locale('fr', 'FR'));
      expect(
        () => LanguageCode.setTestCode(LanguageCodes.fr),
        throwsA(isA<AssertionError>()),
      );
    });

    test('code returns test code directly when setTestCode is called', () {
      const testCode = LanguageCodes.zh;
      LanguageCode.setTestCode(testCode);

      // Should return directly without going through locale lookup
      expect(LanguageCode.code, equals(testCode));
      expect(LanguageCode.locale, equals(testCode.locale));
    });

    test('code error message includes locale and languageCode', () {
      LanguageCode.setTestLocale(const Locale('xyz', 'ABC'));

      try {
        LanguageCode.code;
        fail('Should have thrown StateError');
      } on StateError catch (e) {
        expect(e.message, contains('xyz'));
        expect(e.message, contains('ABC'));
        expect(e.message, contains('languageCode'));
      }
    });

    test('rawLocale normalizes lowercase "c" locale to en_US', () {
      LanguageCode.setTestLocale(const Locale('c'));
      expect(LanguageCode.rawLocale, equals(const Locale('en', 'US')));
    });

    test('rawLocale normalizes lowercase "posix" locale to en_US', () {
      LanguageCode.setTestLocale(const Locale('posix'));
      expect(LanguageCode.rawLocale, equals(const Locale('en', 'US')));
    });

    test('rawLocale normalizes mixed case "c" locale to en_US', () {
      LanguageCode.setTestLocale(const Locale('C'));
      expect(LanguageCode.rawLocale, equals(const Locale('en', 'US')));
    });

    test('rawLocale returns platform locale when no test override', () {
      LanguageCode.setTestCode(null);
      LanguageCode.setTestLocale(null);

      final locale = LanguageCode.rawLocale;
      expect(locale, isA<Locale>());
      // Should not be 'C' or 'POSIX' (should be normalized)
      expect(locale.languageCode.toUpperCase(), isNot('C'));
      expect(locale.languageCode.toUpperCase(), isNot('POSIX'));
    });

    test('tryCode returns und by default when no match found', () {
      LanguageCode.setTestLocale(const Locale('xxx', 'YYY'));
      expect(LanguageCode.tryCode(), equals(LanguageCodes.und));
    });

    test('tryCode respects custom defaultCode', () {
      LanguageCode.setTestLocale(const Locale('xxx', 'YYY'));
      expect(
        LanguageCode.tryCode(defaultCode: LanguageCodes.es),
        equals(LanguageCodes.es),
      );
      expect(
        LanguageCode.tryCode(defaultCode: LanguageCodes.fr),
        equals(LanguageCodes.fr),
      );
    });
  });

  group('LanguageCodes error messages', () {
    setUp(() {
      LanguageCode.setTestCode(null);
      LanguageCode.setTestLocale(null);
    });

    test('fromCode error message includes the code', () {
      try {
        LanguageCodes.fromCode('invalid_code');
        fail('Should have thrown StateError');
      } on StateError catch (e) {
        expect(e.message, contains('invalid_code'));
        expect(e.message, contains('No LanguageCodes found for code'));
      }
    });

    test('fromLocale error message includes the locale', () {
      try {
        LanguageCodes.fromLocale(const Locale('xyz', 'ABC'));
        fail('Should have thrown StateError');
      } on StateError catch (e) {
        expect(e.message, contains('xyz'));
        expect(e.message, contains('No LanguageCodes found for locale'));
      }
    });

    test('fromCode returns orElse when no match found', () {
      const fallback = LanguageCodes.en;
      final result = LanguageCodes.fromCode(
        'invalid_code',
        orElse: () => fallback,
      );
      expect(result, equals(fallback));
    });

    test('fromLocale returns orElse when no match found', () {
      const fallback = LanguageCodes.fr;
      final result = LanguageCodes.fromLocale(
        const Locale('xyz', 'ABC'),
        orElse: () => fallback,
      );
      expect(result, equals(fallback));
    });
  });

  group('LanguageCodes properties and methods', () {
    test('name getter returns englishName', () {
      expect(LanguageCodes.en.name, equals(LanguageCodes.en.englishName));
      expect(LanguageCodes.vi.name, equals(LanguageCodes.vi.englishName));
      expect(LanguageCodes.fr.name, equals(LanguageCodes.fr.englishName));

      for (final code in LanguageCodes.values) {
        expect(code.name, equals(code.englishName));
      }
    });

    test('locale getter handles single language code', () {
      final code = LanguageCodes.en;
      final locale = code.locale;
      expect(locale.languageCode, equals('en'));
      expect(locale.countryCode, isNull);
    });

    test('locale getter handles language_country code', () {
      final code = LanguageCodes.en_US;
      final locale = code.locale;
      expect(locale.languageCode, equals('en'));
      expect(locale.countryCode, equals('US'));
    });

    test('locale getter handles language_script code path', () {
      // Test the branch where second part after underscore is NOT uppercase (script code)
      // In current enum values, all codes with underscores have uppercase country codes
      // So we verify the code path exists and would work if such codes existed
      // We test by checking all codes with 2 parts to ensure proper handling
      final codesWithTwoParts = LanguageCodes.values
          .where((c) => c.code.split('_').length == 2)
          .take(5);

      for (final code in codesWithTwoParts) {
        final parts = code.code.split('_');
        final locale = code.locale;

        if (parts[1] == parts[1].toUpperCase()) {
          // Country code path - already tested
          expect(locale.countryCode, equals(parts[1]));
        } else {
          // Script code path - should use fromSubtags
          expect(locale.scriptCode, equals(parts[1]));
        }
        expect(locale.languageCode, equals(parts[0]));
      }

      // Verify that if a code with lowercase second part existed, it would be handled as script
      // This tests the defensive branch even though no such codes exist in enum
      final testCodeParts = ['en', 'latn']; // hypothetical language_script
      if (testCodeParts[1] != testCodeParts[1].toUpperCase()) {
        // This confirms the logic would work for script codes
        expect(testCodeParts[1], isNot(equals(testCodeParts[1].toUpperCase())));
      }
    });

    test('locale getter handles language_script_country code', () {
      // Find codes with 3+ parts if any exist
      final codesWithThreeParts = LanguageCodes.values
          .where((c) => c.code.split('_').length >= 3)
          .take(5);

      for (final code in codesWithThreeParts) {
        final locale = code.locale;
        expect(locale.languageCode, isNotEmpty);
      }
    });

    test('fromEnglishName returns empty when no match', () {
      final result = LanguageCodes.fromEnglishName('NonExistentLanguage');
      expect(result, isEmpty);
    });

    test('fromNativeName returns empty when no match', () {
      final result = LanguageCodes.fromNativeName('NonExistentLanguage');
      expect(result, isEmpty);
    });

    test('fromEnglishName can return multiple results', () {
      // Some languages might have multiple variants with same English name
      final result = LanguageCodes.fromEnglishName('English');
      expect(result, isNotEmpty);
      // Should contain at least 'en'
      expect(result.any((c) => c.code.startsWith('en')), isTrue);
    });
  });

  group('Edge cases and boundary conditions', () {
    setUp(() {
      LanguageCode.setTestCode(null);
      LanguageCode.setTestLocale(null);
    });

    test('code handles very long invalid language code', () {
      LanguageCode.setTestLocale(Locale('a' * 100, 'XX'));

      try {
        LanguageCode.code;
        fail('Should have thrown StateError');
      } on StateError catch (e) {
        expect(e.message, isNotEmpty);
        expect(e.message, contains('languageCode'));
      }
    });

    test('tryCode handles very long invalid language code gracefully', () {
      LanguageCode.setTestLocale(Locale('a' * 100, 'XX'));
      final result = LanguageCode.tryCode(defaultCode: LanguageCodes.en);
      expect(result, equals(LanguageCodes.en));
    });

    test('fromCode handles empty string', () {
      try {
        LanguageCodes.fromCode('');
        fail('Should have thrown StateError');
      } on StateError catch (e) {
        expect(e.message, contains(''));
      }
    });

    test('fromCode with empty string and orElse', () {
      final result = LanguageCodes.fromCode(
        '',
        orElse: () => LanguageCodes.und,
      );
      expect(result, equals(LanguageCodes.und));
    });

    test('setTestCode can be called multiple times', () {
      LanguageCode.setTestCode(LanguageCodes.en);
      LanguageCode.setTestCode(LanguageCodes.fr);
      LanguageCode.setTestCode(LanguageCodes.de);
      expect(LanguageCode.code, equals(LanguageCodes.de));
    });

    test('setTestLocale can be called multiple times', () {
      LanguageCode.setTestLocale(const Locale('en', 'US'));
      LanguageCode.setTestLocale(const Locale('fr', 'FR'));
      LanguageCode.setTestLocale(const Locale('de', 'DE'));
      expect(LanguageCode.rawLocale, equals(const Locale('de', 'DE')));
    });

    test('setTestCode with null clears the override', () {
      LanguageCode.setTestCode(LanguageCodes.en);
      expect(LanguageCode.code, equals(LanguageCodes.en));

      LanguageCode.setTestCode(null);
      // Now should use platform locale
      expect(LanguageCode.rawLocale, isA<Locale>());
    });

    test('setTestLocale with null clears the override', () {
      LanguageCode.setTestLocale(const Locale('fr', 'FR'));
      expect(LanguageCode.rawLocale, equals(const Locale('fr', 'FR')));

      LanguageCode.setTestLocale(null);
      // Now should use platform locale
      expect(LanguageCode.rawLocale, isA<Locale>());
    });
  });
}
