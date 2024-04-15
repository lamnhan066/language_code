import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:language_code/language_code.dart';

void main() {
  test('getPlatformVersion', () async {
    expect(LanguageCode.rawLocale, isA<Locale>());
    expect(LanguageCode.locale.toString(), equals(LanguageCode.code.code));
    expect(LanguageCode.locale, equals(LanguageCode.code.locale));
  });

  group('LanguageCodes', () {
    test('set test LanguageCodes', () {
      LanguageCode.setTestCode(LanguageCodes.cu);
      const code = LanguageCodes.cu;

      expect(LanguageCode.locale, equals(code.locale));
      expect(LanguageCode.code, equals(code));
    });

    test('fromLocale', () {
      for (final code in LanguageCodes.values) {
        expect(LanguageCodes.fromLocale(code.locale), equals(code));
      }
    });

    test('fromEnglishName', () {
      for (final code in LanguageCodes.values) {
        expect(LanguageCodes.fromEnglishName(code.englishName), contains(code));
      }
    });

    test('fromNativeName', () {
      for (final code in LanguageCodes.values) {
        expect(LanguageCodes.fromNativeName(code.nativeName), contains(code));
      }
    });

    test('Test unavailable locale', () {
      const locale = Locale('en', 'VN');

      expect(
        () {
          LanguageCodes.fromLocale(locale);
        },
        throwsStateError,
      );

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
  });
}
