import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/sign_in_field.dart';
import 'package:eco_shop/features/widgets/sign_up_field.dart';
import 'package:flutter/material.dart';

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
  final TextEditingController name = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    login.dispose();
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    lastName.dispose();
  }

  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();
  bool switcher = false;
  void _checkPass() {
    setState(() {
      switcher = password.text == confirmPassword.text;
          
    });
  }

  void router() {
    context.router.push(const HomeRoute());
  }

  bool obscureText1 = true;
  bool obscureText2 = true;

  @override
  void initState() {
    super.initState();

    password.addListener(_checkPass);
    confirmPassword.addListener(_checkPass);
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
              height: MediaQuery.of(context).size.height * 0.6,
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
                      "Регистрация",
                      style: AppFonts.s24w700,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    SignInField(
                      hintText: "Имя",
                      controller: name,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignInField(
                      hintText: "Фамилия",
                      controller: lastName,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignInField(
                      hintText: "Почта",
                      controller: email,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SignInField(
                      hintText: "Логин",
                      controller: login,
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
                      obscureText: obscureText1,
                      onPressed: () {
                        obscureText1 = !obscureText1;
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
                      obscureText: obscureText2,
                      onPressed: () {
                        obscureText2 = !obscureText2;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    SizedBox(
                        width: 320,
                        child: CustomBtn(
                            onPressed: switcher ? router : null,
                            title: "Создать")),
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
