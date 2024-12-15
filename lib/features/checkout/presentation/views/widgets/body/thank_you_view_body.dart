import 'package:checkout_app/features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            left: 20 + 8,
            right: 20 + 8,
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            child: const CustomDashedLine(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CustomCheckIcon(),
          )
        ],
      ),
    );
  }
}
