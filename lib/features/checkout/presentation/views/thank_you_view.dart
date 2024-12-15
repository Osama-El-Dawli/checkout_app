import 'package:checkout_app/features/checkout/presentation/views/widgets/body/thank_you_view_body.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: ''),
      body: const ThankYouViewBody(),
    );
  }
}