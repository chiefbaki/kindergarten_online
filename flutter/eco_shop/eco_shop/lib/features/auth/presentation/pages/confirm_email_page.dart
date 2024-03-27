import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository_impl.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/constants/app_consts.dart';
import 'package:eco_shop/features/auth/presentation/blocs/email_confirm_bloc/email_confirm_bloc.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/pin_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  void router() {
    context.router.push(const DashboardRoute());
  }

  String pinToUpper(String pin) {
    return pin.toUpperCase();
  }

  @override
  void initState() {
    super.initState();
    getValue();
  }

  String email = "";

  void getValue() async {
    final SharedPrefsImpl _prefs = SharedPrefsImpl();
    email = await _prefs.getValue(key: AppConsts.emailKey);
    setState(() {});
  }

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
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Сообщение отправлено на почту $email",
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
                BlocListener<EmailConfirmBloc, EmailConfirmState>(
                  listener: (context, state) {
                    if (state is EmailConfirmLoading) {
                      debugPrint("LOADING");
                    } else if (state is EmailConfirmSuccess) {
                      router();
                    } else if (state is EmailConfirmFailure) {
                      debugPrint(state.error);
                    }
                  },
                  child: CustomBtn(
                      onPressed: () {
                        BlocProvider.of<EmailConfirmBloc>(context).add(
                            GetConfirm(
                                code: pinToUpper(_pinOne.text) +
                                    pinToUpper(_pinTwo.text) +
                                    pinToUpper(_pinThree.text) +
                                    pinToUpper(_pinFour.text)));
                        print(pinToUpper(_pinOne.text));
                      },
                      title: "Продолжить"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
