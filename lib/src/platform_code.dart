import 'package:language_code/src/language_codes.dart';

class PlatformCode {
  final LanguageCodes playStore;
  final LanguageCodes appStore;

  const PlatformCode(this.playStore, this.appStore);

  @override
  bool operator ==(Object other) {
    return other is PlatformCode &&
        other.playStore == playStore &&
        other.appStore == appStore;
  }

  @override
  int get hashCode => Object.hash(playStore, appStore);
}
