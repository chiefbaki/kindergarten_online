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
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/phone_text_field.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/pin_code_widget.dart';

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
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(
        textStyle: textStyle,
        title: "Вход",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Номер телефона:",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10.h,
                  ),
                  PhoneTextField(
                    controller: _phone,
                    textStyle: textStyle,
                    hintText: "+996 (555) 555-555",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text("Пароль:",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    controller: _password,
                    textStyle: textStyle,
                    hintText: "Пароль",
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
                        name: "Не помните пароль или номер?",
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
                                context.router.push(const CameraRoute());
                              },
                              failure: (e) {
                                wrongLoginDialog(context, textStyle);
                                debugPrint(e);
                              });
                        },
                        child: CustomBtn(
                            onPressed: () {
                              context.read<LoginCubit>().login(
                                  phone: _phone.text, password: _password.text);
                            },
                            name: "Вход"),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Еще нет аккаунта?",
                            style: textStyle.displaySmall!
                                .copyWith(color: AppColors.lightGrey),
                          ),
                          CustomTextBtn(
                            textStyle: textStyle,
                            onPressed: () {
                              context.router.push(const RegistrRoute());
                            },
                            name: "Зарегистрируйтесь",
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              Images.backLogin,
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
                      name: "Восстановить пароль"),
                  const Divider(
                    color: AppColors.grey,
                  ),
                  CustomTextBtn(
                      textStyle: textStyle,
                      onPressed: () {},
                      name: "Восстановить номер"),
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
                    "Номер телефона:",
                    style: textStyle.displaySmall!
                        .copyWith(color: AppColors.black),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  PhoneTextField(
                      textStyle: textStyle,
                      hintText: "Номер телефона: ",
                      controller: _newPhoneNumber),
                  const Spacer(),
                  Center(
                    child: CustomBtn(
                        onPressed: () {
                          Navigator.pop(context);
                          checkPinCodeSheet(context);
                        },
                        name: "Восстановить пароль"),
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
                  CustomBtn(onPressed: () {}, name: "Сбросить пароль")
                ],
              ),
            ),
          );
        });
  }
}
