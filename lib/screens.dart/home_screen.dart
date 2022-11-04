import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_project/screens.dart/hotel_screen.dart';
import 'package:my_project/screens.dart/ticket_view.dart';
import 'package:my_project/utils/app_info_list.dart';
import 'package:my_project/utils/app_styles.dart';
import 'package:my_project/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  var child;

   HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor:  styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                      "Good Morning",style: styles.headLineStyle3,
                      ),
                    const Gap(5),
                     Text(
                    "Book Tickets",style:styles.headLineStyle1 ,
                    ),
                      ],
                    ),
                    Container( 
                      height: 50,
                      width: 50,

                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                             "assets/images/img_1.png"
                            )
                          )
                       ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                 child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205)),
                    Text(
                      "Search",
                      style: styles.headLineStyle4,
                    )
                  ],
                )
            ),
                const Gap(40),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("Upcoming Flights", style: styles.headLineStyle2,),
                //     InkWell(
                //       onTap: (){
                //         print("You are Tapped");
                //       },
                //       child: Text("View all", style: styles.textStyle.copyWith(color: styles.primaryColor),),
                //     )
                //
                //   ],
                // )

                const AppDoubleTextWidget(bigtext: "Upcoming Flights", smalltext: "View all")
            ],
            ),
          ),
         const Gap(15),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
          ),
         ),



         const Gap(5),

         Container(
          padding:const EdgeInsets.symmetric(horizontal: 20),
          child : const AppDoubleTextWidget(bigtext: "Hotels", smalltext: "View all")
         ),
         
        const Gap(15),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
          )
        )
        
        ],
      ),
    );
  }
}