import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
        },
        'bd_BD': {
          'hello': 'আসসালামুআলাইকুম',
        },
        'hi_IN': {
          'hello': 'नमस्कार',
          'Hindi': 'bandi btn',
        },
        'fr_FR': {
          'hello': 'Bonjour',
        },
      };
}
