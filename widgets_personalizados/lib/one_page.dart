import 'dart:math';

import 'package:flutter/material.dart';
import 'widgets/custom_button_widget.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);
  
 
  //metodo async
  random() async {
    for(int i = 0;i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      
        valorAleatorio.value = Random().nextInt(1000);
      
    }
  }

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(valueListenable: valorAleatorio, builder:(_, value, __) => Text('valor eh: $value',
             style: TextStyle(fontSize: 20)
             ),
             ),
            SizedBox(height:10),
            CustomButtonWidget(
              disable: true,
              onPressed:() => random(),
              title: 'Custom BTN',
              titleSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}

  
  