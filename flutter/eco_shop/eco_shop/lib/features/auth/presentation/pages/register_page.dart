import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/extensions/controller_listeners.dart';
import 'package:eco_shop/features/auth/presentation/blocs/register_bloc/register_bloc.dart';
import 'package:eco_shop/features/widgets/arrow_btn.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/sign_in_field.dart';
import 'package:eco_shop/features/widgets/sign_up_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController login = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    login.dispose();
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    phoneNumber.dispose();
  }

  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

  void router() {
    context.router.push(const ConfirmEmailRoute());
  }

  bool obscureText = true;

  @override
  void initState() {
    super.initState();

    password.addListener(() {
      checkPassRegister(setState, password.text, confirmPassword.text);
    });
    confirmPassword.addListener(() {
      checkPassRegister(setState, password.text, confirmPassword.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: MediaQuery.of(context).size.height * 0.525,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: const [
                    BoxShadow(blurRadius: 10, color: AppColors.articleColor),
                  ],
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ArrowBtn(onPressed: () {
                          context.router.maybePop(const LoginRoute());
                        }),
                        const Text(
                          "Регистрация",
                          style: AppFonts.s24w700,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    SignInField(
                      hintText: "Логин",
                      controller: login,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignInField(
                      hintText: "Почта",
                      controller: email,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignInField(
                      hintText: "Номер телефона",
                      controller: phoneNumber,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignUpField(
                      onTap: () {
                        switcher = false;
                      },
                      focusNode: passwordFocusNode,
                      hintText: "Пароль",
                      controller: password,
                      obscureText: obscureText,
                      onPressed: () {
                        obscureText = !obscureText;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignUpField(
                      onTap: () {
                        setState(() {
                          switcher = false;
                        });
                      },
                      focusNode: confirmPasswordFocusNode,
                      hintText: "Подтвердите пароль",
                      controller: confirmPassword,
                      obscureText: obscureText,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    BlocListener<RegisterBloc, RegisterState>(
                      listener: (context, state) {
                        if (state is RegisterLoading) {
                          debugPrint("loading");
                        } else if (state is RegisterSuccess) {
                          debugPrint(state.success.values.toString());
                          Future.delayed(const Duration(seconds: 1), () {
                            router();
                          });
                        } else if (state is RegisterError) {
                          debugPrint(state.error);
                        }
                      },
                      child: SizedBox(
                          width: 320,
                          child: CustomBtn(
                              onPressed: switcher
                                  ? () async {
                                      BlocProvider.of<RegisterBloc>(context)
                                          .add(GetRegister(
                                              email: email.text,
                                              username: login.text,
                                              phoneNumber: phoneNumber.text,
                                              password: password.text));
                                    }
                                  : null,
                              title: "Создать")),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
