import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:payment/features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:payment/features/checkout/presentation/view/widgets/payment_details.dart';
import 'package:payment/features/checkout/presentation/view/widgets/payment_method_bottom_sheet.dart';
import 'package:payment/features/checkout/presentation/view/widgets/payment_methods_list_view.dart';
import 'package:payment/features/checkout/presentation/view/widgets/total_price_widget.dart';
import 'my_cart_info.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset('assets/images/basket.png')),
          const SizedBox(
            width: 25,
          ),
          const OrderInfoItem(
            value: '42.97',
            title: 'Order Subtotal',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            value: 'Discount',
            title: r'0$',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            value: '42.97',
            title: 'Order Subtotal',
          ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xffc7c7c7),
          ),
          const TotalPrice(
            title: 'Total',
            value: r'$50.97',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              text: 'Complete Payment',
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    shape:  RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16)
                    ),
                    builder: (context) {
                      return BlocProvider(
                          create: (context)=>PaymentCubit(CheckoutRepoImpl()),
                          child: const PaymentMethodsBottomSheet());
                    });
                const SizedBox(
                  height: 12,
                );
              })
        ]));
  }
}


