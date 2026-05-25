import 'package:language_code/src/language_codes.dart';

class StoreCode {
  final LanguageCodes playStore;
  final LanguageCodes appStore;

  const StoreCode(this.playStore, this.appStore);

  @override
  bool operator ==(Object other) {
    return other is StoreCode &&
        other.playStore == playStore &&
        other.appStore == appStore;
  }

  @override
  int get hashCode => Object.hash(playStore, appStore);
}
