import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/controller_listeners.dart';
import 'package:eco_shop/features/auth/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:eco_shop/features/auth/presentation/blocs/login_bloc/login_event.dart';
import 'package:eco_shop/features/auth/presentation/blocs/login_bloc/login_state.dart';
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
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    password.addListener(() {
      checkPassLogin(setState, password.text, email.text);
    });
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
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
                      hintText: "Email",
                      controller: email,
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
                        state.when(initial: () {
                          debugPrint("initial");
                        }, loading: () {
                          debugPrint("loading");
                        }, success: (model) {
                          // debugPrint(model.email);
                          // debugPrint(model.accessToken);
                          context.router.push(const DashboardRoute());
                        }, failure: (error) {
                          debugPrint(error);
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text(
                                    "Неверный логин или пароль",
                                    style: AppFonts.s20w700,
                                    textAlign: TextAlign.center,
                                  ),
                                  actions: [
                                    Center(
                                      child: SizedBox(
                                        width: 280,
                                        child: CustomBtn(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            title: "Нажмите, чтобы закрыть"),
                                      ),
                                    )
                                  ],
                                );
                              });
                        });
                      },
                      child: SizedBox(
                          width: 320,
                          child: CustomBtn(
                              onPressed: isButtonActive
                                  ? () {
                                      context.read<LoginBloc>().add(
                                          LoginEvent.login(
                                              email: email.text,
                                              password: password.text));
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
