import 'package:flutter/material.dart';

import 'widgets/custom_button_widget.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          disable: true,
          onPressed:() {},
          title: 'Custom BTN',
          titleSize: 18,
        ),
      ),
    );
  }
}