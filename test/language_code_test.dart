import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:language_code/language_code.dart';

void main() {
  setUp(() {
    LanguageCode.setTestCode();
    LanguageCode.setTestLocale();
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
      expect(LanguageCodes.fromCode(locale.languageCode), equals(LanguageCodes.en));
      expect(
        LanguageCodes.fromLocale(locale, orElse: () => LanguageCodes.fromCode(locale.languageCode)),
        equals(LanguageCodes.en),
      );
    });

    test('unavailable `languageCode`', () {
      const locale = Locale('ennn', 'VNNN');
      LanguageCode.setTestLocale(locale);

      expect(() => LanguageCode.code, throwsStateError);
      expect(() => LanguageCodes.fromLocale(locale), throwsStateError);
      expect(() => LanguageCodes.fromCode(locale.languageCode), throwsStateError);
      expect(
        () => LanguageCodes.fromLocale(locale, orElse: () => LanguageCodes.fromCode(locale.languageCode)),
        throwsStateError
      );
    });
  });
}
