import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/pin_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class ConfirmEmailPage extends StatefulWidget {
  const ConfirmEmailPage({super.key});

  @override
  State<ConfirmEmailPage> createState() => _ConfirmEmailPageState();
}

class _ConfirmEmailPageState extends State<ConfirmEmailPage> {
  final TextEditingController _pinOne = TextEditingController();
  final TextEditingController _pinTwo = TextEditingController();
  final TextEditingController _pinThree = TextEditingController();
  final TextEditingController _pinFour = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _pinOne.dispose();
    _pinTwo.dispose();
    _pinThree.dispose();
    _pinFour.dispose();
  }

  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100,),
                    const Text(
                      "Сообщение отправлено на почту ik509331@gmail.com",
                      style: AppFonts.s20w700,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 165,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          PinCodeField(controller: _pinOne),
                          PinCodeField(controller: _pinTwo),
                          PinCodeField(controller: _pinThree),
                          PinCodeField(controller: _pinFour),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                CustomBtn(onPressed: () {}, title: "Продолжить")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
