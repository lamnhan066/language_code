# Language Code

This package help you get the current language code and locale of the device.

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
print(language.name); // => English
print(language.nativeName); // => English

language = LanguageCodes.vi;
print(language.name); // => Vietnamese
print(language.nativeName); // => Tiếng Việt
```

You can convert the language from locale, name or nativeName to `LanguageCodes` this way:

``` dart
LanguageCodes.fromLocale(Locale('vi'));
LanguageCodes.fromCode('vi');
LanguageCodes.fromName('Vietnamese');
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
