import 'package:flutter_test/flutter_test.dart';
import 'package:language_code/language_code.dart';

void main() {
  test('playStore includes exact platform locales', () {
    expect(StoreSupportedCodes.playStore, contains(LanguageCodes.af));
    expect(StoreSupportedCodes.playStore, contains(LanguageCodes.he_IL));
    expect(StoreSupportedCodes.playStore, contains(LanguageCodes.zh_CN));
    expect(StoreSupportedCodes.playStore, contains(LanguageCodes.zh_TW));
    expect(StoreSupportedCodes.playStore, contains(LanguageCodes.es_419));
  });

  test('appStore includes exact platform locales', () {
    expect(StoreSupportedCodes.appStore, contains(LanguageCodes.gu_IN));
    expect(StoreSupportedCodes.appStore, contains(LanguageCodes.or_IN));
    expect(StoreSupportedCodes.appStore, contains(LanguageCodes.pa_IN));
    expect(StoreSupportedCodes.appStore, contains(LanguageCodes.ur_PK));
    expect(StoreSupportedCodes.appStore, contains(LanguageCodes.es_MX));
    expect(StoreSupportedCodes.appStore, contains(LanguageCodes.he));
  });

  test('both uses two digit keys and paired platform codes', () {
    expect(
      StoreSupportedCodes.bothStores.keys,
      everyElement((LanguageCodes code) => code.code.length == 2),
    );
    expect(StoreSupportedCodes.bothStores.length, equals(39));
    expect(
      StoreSupportedCodes.bothStores[LanguageCodes.en],
      equals({
        const StoreCode(LanguageCodes.en_AU, LanguageCodes.en_AU),
        const StoreCode(LanguageCodes.en_CA, LanguageCodes.en_CA),
        const StoreCode(LanguageCodes.en_GB, LanguageCodes.en_GB),
        const StoreCode(LanguageCodes.en_US, LanguageCodes.en_US),
      }),
    );
    expect(
      StoreSupportedCodes.bothStores[LanguageCodes.zh],
      equals({
        const StoreCode(LanguageCodes.zh_CN, LanguageCodes.zh_Hans),
        const StoreCode(LanguageCodes.zh_TW, LanguageCodes.zh_Hant),
        const StoreCode(LanguageCodes.zh_HK, LanguageCodes.zh_Hant),
      }),
    );
    expect(
      StoreSupportedCodes.bothStores[LanguageCodes.he],
      equals({const StoreCode(LanguageCodes.he_IL, LanguageCodes.he)}),
    );
  });
}
