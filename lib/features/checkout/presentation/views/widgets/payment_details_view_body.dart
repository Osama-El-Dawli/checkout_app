import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: PaymentMethodsListView()),
        SliverToBoxAdapter(child: CustomCreditCard()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 12,
                right: 16,
                left: 16,
              ),
              child: CustomButton(text: 'Pay'),
            ),
          ),
        ),
      ],
    );
  }
}
