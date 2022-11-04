import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_project/utils/app_layout.dart';
import 'package:my_project/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen ({ Key? key, required this.hotel }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print('Hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height:  AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 6),
      decoration: BoxDecoration(
        color: styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [

          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,

          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height:  AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(

                  "assets/images/${hotel['image']}"
                )
               )
            ),
          ),

          const Gap(10),
          Text(
            hotel['place'],
            style: styles.headLineStyle2.copyWith(color: styles.kakiColor),
          ),

          const Gap(5),

           Text(
             hotel['destination'],
            style: styles.headLineStyle3.copyWith(color: Colors.white),
          ),

          const Gap(8),

           Text(
            "\$ ${hotel['price']} /night",
            style: styles.headLineStyle1.copyWith(color:styles.kakiColor),
          ),

        ],
      ),
    );
  }
}