import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/extensions/controller_listeners.dart';
import 'package:eco_shop/features/auth/presentation/blocs/register_bloc/register_bloc.dart';
import 'package:eco_shop/features/auth/presentation/blocs/register_bloc/register_event.dart';
import 'package:eco_shop/features/auth/presentation/blocs/register_bloc/register_state.dart';
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
  final TextEditingController _email = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _username.dispose();
    _password.dispose();
    _confirmPassword.dispose();
  }

  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  void router() {
    context.router.push(const ConfirmEmailRoute());
  }

  bool obscureText = true;

  @override
  void initState() {
    super.initState();

    _password.addListener(() {
      checkPassRegister(setState, _password.text, _confirmPassword.text);
    });
    _confirmPassword.addListener(() {
      checkPassRegister(setState, _password.text, _confirmPassword.text);
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
                      hintText: "Email",
                      controller: _email,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignInField(
                      hintText: "Логин",
                      controller: _username,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SignUpField(
                      onTap: () {
                        switcher = false;
                      },
                      focusNode: _passwordFocusNode,
                      hintText: "Пароль",
                      controller: _password,
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
                      focusNode: _confirmPasswordFocusNode,
                      hintText: "Подтвердите пароль",
                      controller: _confirmPassword,
                      obscureText: obscureText,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    BlocListener<RegisterBloc, RegisterState>(
                      listener: (context, state) {
                        state.when(initial: () {
                          debugPrint("initial");
                        }, loading: () {
                          debugPrint("loading");
                        }, success: (success) {
                          debugPrint(success.toString());
                          Future.delayed(const Duration(seconds: 2), () {
                            router();
                          });
                        }, failure: (failure) {
                          debugPrint(failure.toUpperCase());
                        });
                      },
                      child: SizedBox(
                          width: 320,
                          child: CustomBtn(
                              onPressed: switcher
                                  ? () async {
                                      BlocProvider.of<RegisterBloc>(context)
                                          .add(GetRegister(
                                              email: _email.text,
                                              password: _password.text,
                                              username: _username.text));
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
