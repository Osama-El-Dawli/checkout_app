import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset('assets/images/basket.png')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: '\$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: '\$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: '\$8',
          ),
          const Divider(
            thickness: 2,
            color: Color(0xffc7c7c7),
            height: 34,
          ),
          const TotalPrice(
            title: 'Total',
            value: '\$50.97',
          ),
          const CustomButton(
            text: 'Complete Payment',
          ),
        ],
      ),
    );
  }
}
