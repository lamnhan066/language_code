# Language Code

This package help you get the current language code and Locale of the device. Also includes almost the language codes with English names and native names.

## Usage

Get current language code as `LanguageCodes`:

``` dart
final languageCode = LanguageCode.code;
```

Get current language as Locale:

``` dart
final locale = LanguageCode.locale;
```

Get the current language as raw code (may contains '-' and '_' character)

``` dart
final rawCode = LanguageCode.rawCode;
```

This package includes almost the language code, name in English and name in Native. This is how to use it:

``` dart
var language = LanguageCodes.en;
print(language.englishNames); // => ['English']
print(language.nativeNames); // => ['English']

language = LanguageCodes.vi;
print(language.englishNames); // => ['Vietnamese']
print(language.nativeNames); // => ['Tiếng Việt']

language = LanguageCodes.kl;
print(language.englishNames); // => ['Kalaallisut', 'Greenlandic']
print(language.nativeNames); // => ['kalaallisut', 'kalaallit oqaasii']
```

Some language codes have multiple names in English or names in native, so the `englishNames` and `nativeNames` will return List<String>.

You can get the first value from `englishNames` and `nativeNames` by using:

``` dart
final englishName = laguage.englishName;
final nativeName = language.nativeName;
```

You can convert the language from locale, englishName or nativeName to `LanguageCodes` this way:

``` dart
LanguageCodes.fromLocale(Locale('vi'));
LanguageCodes.fromCode('vi');
LanguageCodes.fromEnglishName('Vietnamese');
LanguageCodes.fromNativeName('Tiếng Việt');
```

## Testing

Use this method if you want to set a test `LanguageCodes`:

``` dart
LanguageCode.setTestCode(LanguageCodes.vi);
```

Just set it to `null` if you want to stop testing.

## Contributions

If your language is missing or incorrect, or you have any issues with the package, please file an issue or create a PR. Thank you!
