import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/functions.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/auth/presentation/cubit/login_cubit.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/features/widgets/custom_btn.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/features/widgets/custom_text_field.dart';
import 'package:kindergarten_online/features/widgets/phone_text_field.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/pin_code_widget.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phone = TextEditingController(text: "996990552219");
  final _password = TextEditingController(text: "0514");
  final _newPhoneNumber = TextEditingController();
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());

  bool _obscureText = true;

  bool isNotEmptyField = false;

  void switcher() {
    setState(() {
      isNotEmptyField = _phone.text.isNotEmpty && _password.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _phone.addListener(() {
      switcher();
    });
    _password.addListener(() {
      switcher();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _phone.dispose();
    _password.dispose();
    _newPhoneNumber.dispose();
    for (var element in _controllers) {
      element.dispose();
      debugPrint("controllers re disposed");
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(
        textStyle: textStyle,
        title: S.of(context).enter,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).phoneNumber,
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(
                    height: 10.h,
                  ),
                  PhoneTextField(
                    controller: _phone,
                    textStyle: textStyle,
                    hintText: S.of(context).inputNumber,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(S.of(context).password,
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    controller: _password,
                    textStyle: textStyle,
                    hintText: S.of(context).inputPassword,
                    obscureText: _obscureText,
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextBtn(
                        textStyle: textStyle,
                        onPressed: () {
                          resetDataSheet(context, textStyle);
                        },
                        name: S.of(context).forgetPassOrNumber,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55.h,
                  ),
                  Column(
                    children: [
                      BlocListener<LoginCubit, LoginState>(
                        listener: (context, state) {
                          state.when(
                              initial: () => const SizedBox(),
                              loading: () => const Center(
                                    child: CircularProgressIndicator.adaptive(),
                                  ),
                              success: () {
                                context.router.push(const CreativityRoute());
                              },
                              failure: (e) {
                                wrongLoginDialog(context, textStyle);
                                debugPrint(e);
                              });
                        },
                        child: Center(
                          child: CustomBtn(
                              onPressed: isNotEmptyField
                                  ? () {
                                      context.read<LoginCubit>().login(
                                          phone: _phone.text,
                                          password: _password.text);
                                    }
                                  : null,
                              name: S.of(context).enter),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       "Еще нет аккаунта?",
                      //       style: textStyle.displaySmall!
                      //           .copyWith(color: AppColors.lightGrey),
                      //     ),
                      //     CustomTextBtn(
                      //       textStyle: textStyle,
                      //       onPressed: () {
                      //         context.router.push(const RegistrRoute());
                      //       },
                      //       name: "Зарегистрируйтесь",
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              Imgs.backLogin,
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> resetDataSheet(BuildContext context, TextTheme textStyle) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 44),
              child: Column(
                children: [
                  CustomTextBtn(
                      textStyle: textStyle,
                      onPressed: () {
                        Navigator.pop(context);
                        resetPasswordSheet(context, textStyle);
                      },
                      name: S.of(context).restorePassword),
                  const Divider(
                    color: AppColors.grey,
                  ),
                  CustomTextBtn(
                      textStyle: textStyle,
                      onPressed: () {},
                      name: S.of(context).restoreNumber),
                ],
              ),
            ),
          );
        });
  }

  Future<dynamic> resetPasswordSheet(
      BuildContext context, TextTheme textStyle) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(44),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).phoneNumber,
                    style: textStyle.displaySmall!
                        .copyWith(color: AppColors.black),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  PhoneTextField(
                      textStyle: textStyle,
                      hintText: S.of(context).phoneNumber,
                      controller: _newPhoneNumber),
                  const Spacer(),
                  Center(
                    child: CustomBtn(
                        onPressed: () {
                          Navigator.pop(context);
                          _newPhoneNumber.clear();
                          checkPinCodeSheet(context);
                        },
                        name: S.of(context).restorePassword),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<dynamic> checkPinCodeSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _controllers
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: PinCodeWidget(controller: e),
                              ))
                          .toList()),
                  const Spacer(),
                  CustomBtn(
                      onPressed: () {
                        for (var element in _controllers) {
                          element.clear();
                        }
                      },
                      name: S.of(context).resetPassword)
                ],
              ),
            ),
          );
        });
  }
}
