import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_project/utils/app_layout.dart';
import 'package:my_project/utils/app_styles.dart';
import 'package:my_project/widgets/icon_text_widget.dart';
import 'package:my_project/widgets/ticket_tabs.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        padding : EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \nYou looking for ?", style: styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35))),

          Gap(AppLayout.getHeight(20)),
          AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),

          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),

          Gap(AppLayout.getHeight(20)),

          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
        // third coloured widget

          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18), horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
            color: Color(0xD91130CE),
            borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child: Center(
                child : Text(
                  "Find Tickets", style: styles.textStyle.copyWith(color: Colors.white, ),
                ),
            ),
            ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigtext: "Upcoming Flights", smalltext: "View all"),
          Gap(AppLayout.getHeight(15)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit.jpg"
                          )
                        )
                      ),
                    ),
                    
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight, Don't miss this chance.", style: styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [

                          Container(
                            height: AppLayout.getHeight(200),
                            width: size.width * 0.44,
                            decoration: BoxDecoration(
                              color: Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Discount \nfor survey", style: styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                                Gap(AppLayout.getHeight(15)),
                                Text("Take the survey about our services to get the discount.", style: styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),
                              ],
                            ),
                          ),

                         Positioned(
                           right: -45,
                             top: -40,
                             child: Container(
                               padding: EdgeInsets.all(AppLayout.getHeight(30)),
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(width: 18, color: Color(0xFF189999)),
                                 color: Colors.transparent,
                               ),
                             ),
                         )

                    ],
                  ),

                  Gap(AppLayout.getHeight(15)),

                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Colors.redAccent,
                    ),

                    child: Column(
                      children: [

                        Text(
                          "Take Love", style: styles.headLineStyle1.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(35)),

                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 35)
                            ),

                            TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 50)
                            ),

                            TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 35)
                            )
                          ],
                        )
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
