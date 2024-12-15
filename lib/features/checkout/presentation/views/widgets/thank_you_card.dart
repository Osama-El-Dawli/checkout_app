import 'package:checkout_app/core/utils/styles.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, right: 20, left: 20),
        child: Column(
          children: [
            Text(
              'Thank You!',
              style: Styles.style25,
              textAlign: TextAlign.center,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            const TotalPrice(
              title: 'Total',
              value: '\$50.97',
            ),
            const SizedBox(
              height: 30,
            ),
            const CardInfoWidget()
          ],
        ),
      ),
    );
  }
}

