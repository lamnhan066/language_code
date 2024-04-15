# Language Code

This package help you get the current language code and Locale of the device. Also includes almost the language codes with English names and native names.

## Usage

Get current language code as `LanguageCodes`:

``` dart
final languageCode = LanguageCode.code;
```

Get current language as Locale:

``` dart
final locale = LanguageCode.code.locale;

// or

final locale = LanguageCode.locale;
```

Get the current language of the device as Locale, it may not supported by [LanguageCodes]:

``` dart
final rawLocale = LanguageCode.rawLocale;
```

This package includes almost the language code, name in English and name in Native. This is how to use it:

``` dart
var language = LanguageCodes.en;
print(language.englishName); // => 'English'
print(language.nativeName); // => 'English'

language = LanguageCodes.vi;
print(language.englishName); // => 'Vietnamese'
print(language.nativeName); // => 'Tiếng Việt'
```

You can convert the language from locale, englishName or nativeName to `LanguageCodes` this way:

``` dart
LanguageCodes.fromLocale(Locale('vi')); // Returns as `LanguageCodes`
LanguageCodes.fromCode('vi'); // Returns as `LanguageCodes`
LanguageCodes.fromEnglishName('Vietnamese'); // Returns as `Iterable`
LanguageCodes.fromNativeName('Tiếng Việt'); // Returns as `Iterable`
```

If no matching element is found, returns the result of [orElse]. If [orElse] is omitted, it defaults to throwing a [StateError].

## Testing

Use this method if you want to set a test `LanguageCodes`:

``` dart
LanguageCode.setTestCode(LanguageCodes.vi);
```

Set it to `null` if you want to stop testing.

## Contributions

If your language is missing or incorrect, or you have any issues with the package, please file an issue or create a PR. Thank you!
