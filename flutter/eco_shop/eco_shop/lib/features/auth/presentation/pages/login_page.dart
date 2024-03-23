import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/sign_in_field.dart';
import 'package:eco_shop/features/widgets/sign_up_field.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController login = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    login.dispose();
    password.dispose();
  }

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
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
                    const Text(
                      "Авторизация",
                      style: AppFonts.s24w700,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SignInField(
                      hintText: "Логин",
                      controller: login,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignUpField(
                      hintText: "Пароль",
                      controller: password,
                      obscureText: obscureText,
                      onPressed: () {
                        obscureText = !obscureText;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    SizedBox(
                        width: 320,
                        child: CustomBtn(onPressed: () {}, title: "Войти")),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      "или",
                      style: AppFonts.s16w500
                          .copyWith(color: AppColors.articleColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          context.router.push(const RegisterRoute());
                        },
                        child: Text("Создать аккаунт",
                            style: AppFonts.s16w600
                                .copyWith(color: AppColors.articleColor))),
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
