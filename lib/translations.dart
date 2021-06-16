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
    },
    'ru_RU' : {
      'title' : 'Заголовок',
      'subtitle': 'Подзаголовок',
      'Russian':'Русккий',
      'English':'Английский',
    },
    'uk_UA' : {
      'title' : 'Заголовок',
      'subtitle': 'Підзаголовок',
      'Russian':'Російський',
      'English':'Англійський',
    }
  };

}