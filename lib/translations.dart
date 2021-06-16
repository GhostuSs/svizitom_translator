import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:get/get.dart';

class Translator extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'title' : 'Title',
      'subtitle': 'Subtitle',
      'Russian':'Russian',
      'English':'English',
      'Ukrainian':'Ukrainian'
    },
    'ru_RU' : {
      'title' : 'Заголовок',
      'subtitle': 'Подзаголовок',
      'Russian':'Руский',
      'English':'Английский',
      'Ukrainian':'Украинский'
    },
    'uk_UA' : {
      'title' : 'Заголовок',
      'subtitle': 'Підзаголовок',
      'Russian':'Російський',
      'English':'Англійський',
      'Ukrainian':'Украiньска'
    }
  };

}