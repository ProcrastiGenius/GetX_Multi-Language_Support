// ignore_for_file: file_names

import 'package:get/get.dart';

class LanguageTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appTitle': 'GetX Multi Lingual Support',
          'title': 'Easy Language Translations',
          'subtitle':
              'This text will automatically be translated into the appropriate language',
          'button1': 'Switch language',
          'chooseLanguage': 'Choose your language'
        },
        'hi_IN': {
          'appTitle': 'GetX बहु भाषाई समर्थन',
          'title': 'सरल भाषा अनुवाद',
          'subtitle':
              'यह पाठ स्वचालित रूप से उपयुक्त भाषा में अनुवादित हो जाएगा',
          'button1': 'भाषा बदलें',
          'chooseLanguage': 'अपनी भाषा चुनें'
        },
        'bn_BD': {
          'appTitle': 'GetX বহুভাষিক সমর্থন',
          'title': 'সহজ ভাষার অনুবাদ',
          'subtitle': 'এই পাঠটি স্বয়ংক্রিয়ভাবে উপযুক্ত ভাষায় অনুবাদ হবে',
          'button1': 'ভাষা পরিবর্তন করুন',
          'chooseLanguage': 'আপনার ভাষা চয়ন করুন'
        },
      };
}
