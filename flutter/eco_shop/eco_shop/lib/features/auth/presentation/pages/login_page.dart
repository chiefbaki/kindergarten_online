import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/auth/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:eco_shop/features/widgets/auth_btn.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/sign_in_field.dart';
import 'package:eco_shop/features/widgets/sign_up_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController login = TextEditingController();
  final TextEditingController password = TextEditingController();

  bool _isButtonActive = false;
  void _checkPass() {
    setState(() {
      _isButtonActive =
          (password.text.isNotEmpty && password.text.length >= 8) &&
              login.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    password.addListener(_checkPass);
  }

  @override
  void dispose() {
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
              height: MediaQuery.of(context).size.height * 0.43,
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
                      height: 28,
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
                    BlocListener<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state is LoginLoading) {
                          debugPrint("Loading login");
                        } else if (state is LoginSuccess) {
                          context.router.push(const DashboardRoute());
                        } else if (state is LoginFailure) {
                          debugPrint(state.error.toUpperCase());
                        }
                      },
                      child: SizedBox(
                          width: 320,
                          child: CustomBtn(
                              onPressed: _isButtonActive
                                  ? () {
                                      BlocProvider.of<LoginBloc>(context).add(
                                          GetLogin(
                                              password: password.text,
                                              username: login.text));
                                    }
                                  : null,
                              title: "Войти")),
                    ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AuthBtn(
                          onPressed: () => context.router.push(
                            const RegisterRoute(),
                          ),
                          title: "Создать аккаунт",
                          color: AppColors.articleColor,
                        ),
                        AuthBtn(
                          onPressed: () => context.router.push(
                            const RecoveryRoute(),
                          ),
                          title: "Не помните пароль?",
                          color: AppColors.blue,
                        ),
                      ],
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
