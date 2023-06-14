import 'package:booking_app/screens/hotel_screen.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_info_list.dart';
import 'package:booking_app/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Column(
              children: [
                Column(
                  children: [
                    const Gap(45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Good Morning', style: Styles.headLineStyle3),
                            const Gap(5),
                            Text(
                              'Book Ticket',
                              style: Styles.headLineStyle,
                            ),
                          ],
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/img_1.jpeg'))),
                        )
                      ],
                    ),
                    const Gap(25),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFF4F6FD)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      child: Row(
                        children: [
                          const Icon(
                            FluentSystemIcons.ic_fluent_search_regular,
                            color: Color.fromARGB(255, 199, 199, 187),
                          ),
                          Text(
                            'Search',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ),
                    const Gap(25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Flights",
                          style: Styles.headLineStyle2,
                        ),
                        InkWell(
                          onTap: () {
                            print("Your test");
                          },
                          child: Text(
                            "View all",
                            style: Styles.textStyle
                                .copyWith(color: Styles.primaryColor),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TicketView(),
                  TicketView(),
                ],
              )),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print("Your test");
                  },
                  child: Text(
                    "View all",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotleList
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList(),
              ))
        ],
      ),
    );
  }
}
