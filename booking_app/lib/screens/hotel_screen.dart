import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(color: Colors.white, blurRadius: 20, spreadRadius: 10)
          ]),
      height: 300,
      margin: const EdgeInsets.only(right: 17, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Styles.primaryColor,
                image: DecorationImage(
                    image: AssetImage('assets/images/${hotel['image']}'))),
          ),
          const Gap(5),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakoCplor),
          ),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['Price']}/night',
            style: Styles.headLineStyle3.copyWith(color: Styles.kakoCplor),
          ),
        ],
      ),
    );
  }
}
