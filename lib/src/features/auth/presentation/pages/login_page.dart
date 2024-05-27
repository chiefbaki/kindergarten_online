import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';
import 'package:kindergarten_online/src/features/auth/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_text_field.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/phone_text_field.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/pin_code_widget.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phone = TextEditingController(text: "996501594444");
  final _password = TextEditingController(text: "alatoouniversity27");
  final _newPhoneNumber = TextEditingController();
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());

  bool _obscureText = true;

  bool _isNotEmptyField = false;

  void switcher() {
    setState(() {
      _isNotEmptyField = _phone.text.isNotEmpty && _password.text.isNotEmpty;
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
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).enter,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 44, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).phoneNumber,
                      style: context.textTheme.displaySmall!
                          .copyWith(color: AppColors.black)),
                  10.verticalSpace,
                  PhoneTextField(
                    controller: _phone,
                    hintText: S.of(context).inputNumber,
                  ),
                  20.verticalSpace,
                  Text(S.of(context).password,
                      style: context.textTheme.displaySmall!
                          .copyWith(color: AppColors.black)),
                  10.verticalSpace,
                  CustomTextField(
                    controller: _password,
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
                        onPressed: () {
                          resetDataSheet(context);
                        },
                        name: S.of(context).forgetPassOrNumber,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  55.verticalSpace,
                  Column(
                    children: [
                      BlocListener<LoginBloc, LoginState>(
                        listener: (context, state) {
                          state.when(
                              initial: () => const SizedBox(),
                              loading: () => const Center(
                                    child: CircularProgressIndicator.adaptive(),
                                  ),
                              success: () {
                                // customBottomSheet(context, showButton: false);
                                context.showAlertDialog(showButton: false);
                              },
                              failure: (e) {
                                context.errorAlertDialog();
                                debugPrint(e);
                              });
                        },
                        child: Center(
                          child: CustomBtn(
                              onPressed: _isNotEmptyField
                                  ? () {
                                      context.read<LoginBloc>().add(
                                          LoginEvent.login(
                                              phone: _phone.text.trim(),
                                              password: _password.text.trim()));
                                    }
                                  : null,
                              name: S.of(context).enter),
                        ),
                      ),
                      20.verticalSpace,
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

  Future<dynamic> resetDataSheet(
    BuildContext context,
  ) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: context.height * 0.25,
            child: Padding(
              padding: REdgeInsets.symmetric(vertical: 44, horizontal: 44),
              child: Column(
                children: [
                  CustomTextBtn(
                      onPressed: () {
                        Navigator.pop(context);
                        resetPasswordSheet(
                          context,
                        );
                      },
                      name: S.of(context).restorePassword),
                  const Divider(
                    color: AppColors.grey,
                  ),
                  CustomTextBtn(
                      onPressed: () {}, name: S.of(context).restoreNumber),
                ],
              ),
            ),
          );
        });
  }

  Future<dynamic> resetPasswordSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (context) {
          return Padding(
            padding: REdgeInsets.all(44),
            child: SizedBox(
              height: context.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).phoneNumber,
                    style: context.textTheme.displaySmall!
                        .copyWith(color: AppColors.black),
                  ),
                  10.verticalSpace,
                  PhoneTextField(
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
            height: context.height * 0.4,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _controllers
                          .map((e) => Padding(
                                padding: REdgeInsets.only(right: 8),
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
