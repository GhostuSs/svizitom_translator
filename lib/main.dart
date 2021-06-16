import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'translations.dart';
import 'package:get/get.dart';
class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _App();
  }
}

class _App extends State<App>{
  List locales=[
    {'name':'Russian','locale': Locale('ru','RU')},
    {'name':'English','locale': Locale('en','US')},
  ];
  var data = Data();
  var isSelected=[false,true];
  final TextStyle _textStyle = TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.blueGrey);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Translator(),
      locale: Get.deviceLocale,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ToggleButtons(
                borderRadius: BorderRadius.circular(7.0),
                fillColor: Colors.blue.withOpacity(0.12),
                  borderColor: Colors.blueGrey,
                  isSelected: isSelected,
                  selectedBorderColor: Colors.blue,
                  onPressed: (index){
                    setState(() {
                      Get.updateLocale(locales[index]['locale']);
                      for(index=0;index<isSelected.length;index++)
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  children: [
                    Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                            'Russian'.tr,
                          style: _textStyle,
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'English'.tr,
                          style: _textStyle,
                        )
                    ),
                  ],
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('title'.tr,style: _textStyle)
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('subtitle'.tr,style: _textStyle)
              ),


            ],
          ),
        ),
      ),
    );
  }

}
void main()=>runApp(App());

class Data{

}