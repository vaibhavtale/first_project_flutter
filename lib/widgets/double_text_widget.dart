import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const AppDoubleTextWidget({Key? key, required this.bigtext, required this.smalltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigtext, style: styles.headLineStyle2,),
        InkWell(
          onTap: (){
            print("You are Tapped");
          },
          child: Text(smalltext, style: styles.textStyle.copyWith(color: styles.primaryColor),),
        )

      ],
    );
  }
}

