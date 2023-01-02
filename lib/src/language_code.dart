import 'package:flutter/widgets.dart';

import 'language_code_stub.dart'
    if (dart.library.html) 'language_code_web.dart';

class LanguageCode {
  LanguageCode._();

  static final String code = languaeCodeImpl;

  static Locale get locale {
    final String token = code.contains('-') ? '-' : '_';
    List localeList = code.split(token);

    if (localeList.length < 2) {
      return Locale(localeList[0]);
    }

    return Locale(localeList[0], localeList[1]);
  }
}
