import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter email',
          'password': 'Enter password',
          'internet_exception':
              'We are unable to show results. \n Please Chech Your Internet\n connection',
          'general_exception': 'unable to load , check your connection',
        },
        'hi_IN': {
          'email_hint': 'ईमेल दर्ज करें',
          'password': 'पास वर्ड दर्ज करें',
          'internet_exception':
              'हम परिणाम दिखाने में असमर्थ हैं. \nकृपया अपना इंटरनेट\nकनेक्शन जांचें',
          'general_exception': 'लोड करने में असमर्थ, अपना कनेक्शन जांचें',
        },
      };
}
