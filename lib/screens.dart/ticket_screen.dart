import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:my_project/screens.dart/ticket_view.dart';
import 'package:my_project/utils/app_info_list.dart';
import 'package:my_project/utils/app_layout.dart';
import 'package:my_project/utils/app_styles.dart';
import 'package:my_project/widgets/column_layout.dart';
import 'package:my_project/widgets/layout_builder_widget.dart';
import 'package:my_project/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(

      backgroundColor: styles.bgColor,
      body: Stack(
        children: [

                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
                    children: [
                      Gap(AppLayout.getHeight(40)),
                      Text(
                        "Tickets", style: styles.headLineStyle1,
                      ),

                      Gap(AppLayout.getHeight(20)),

                      AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),

                      Gap(AppLayout.getHeight(20)),

                      Container(
                        padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                        child: TicketView(ticket: ticketList[0], isColor: true,),
                      ),

                      SizedBox(height: 2,),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [

                                AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start, isColor: false,),

                                AppColumnLayout(firstText: "5221 345589", secondText: "Passport", alignment: CrossAxisAlignment.end, isColor: false,),

                              ],
                            ),
                            Gap(AppLayout.getHeight(20)),
                            AppLayoutBuilderWidget(section: 15, isColor: false, width: 5,),
                            Gap(AppLayout.getHeight(20)),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [

                                AppColumnLayout(firstText: "0055 433 1782", secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start, isColor: false,),

                                AppColumnLayout(firstText: "B2S6451", secondText: "Booking Code", alignment: CrossAxisAlignment.end, isColor: false,),

                              ],
                            ),
                            Gap(AppLayout.getHeight(20)),
                            AppLayoutBuilderWidget(section: 15, isColor: false, width: 5,),
                            Gap(AppLayout.getHeight(20)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [

                                    Row(
                                      children: [
                                        Image.asset("assets/images/visa.png", scale: 11,),
                                        Text(" *** 248", style: styles.headLineStyle3,)
                                      ],
                                    ),

                                    Gap(5),

                                    Text("Payment Method", style: styles.headLineStyle4,),

                                  ],

                                ),

                                AppColumnLayout(firstText: "\$ 249.00", secondText: "Price", alignment: CrossAxisAlignment.end, isColor: false,),

                              ],
                            )
                          ],
                        ),
                      ),

                    //  BarCode  -- here

                      SizedBox(height: 2,),

                      Container(

                        decoration: const BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(21),
                            bottomRight: Radius.circular(21),
                          )
                        ),

                        margin: EdgeInsets.only(left: 15, right: 15),
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                            child: BarcodeWidget(
                              barcode: Barcode.code128(),
                              data: 'https://github.com/martinovovo',
                              drawText: false,
                              color: styles.textColor,
                              width: double.infinity,
                              height: 70,
                            ),
                          ),
                        ),
                      ),

                      Gap(AppLayout.getHeight(20)),

                      Container(
                        padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                        child: TicketView(ticket: ticketList[0], ),
                      ),

                    ],
                  ),



                     Positioned(
                       top: 295,
                       left: 22,
                       child: Container(
                         padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: styles.textColor, width: 2),
                        ),
                           child : CircleAvatar(
                         maxRadius: 4,
                         backgroundColor: styles.textColor,
                       )

                      ),

                     ),

                     Positioned(
            top: 295,
            right: 24,
            child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: styles.textColor, width: 2),
                ),
                child : CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: styles.textColor,
                )

            ),

          ),

                ],
              ),

    );
  }
}
