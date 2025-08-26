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
      LanguageCodes.fromLocale(const Locale('en', 'USS'),
          orElse: () => LanguageCodes.en),
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
      expect(LanguageCode.tryCode(defaultCode: LanguageCodes.en),
          equals(LanguageCodes.en));
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
  });
}
