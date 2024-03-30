import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/sign_in_field.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  final TextEditingController _email = TextEditingController();

  bool _isButtonActive = false;
  void _checkPass() {
    setState(() {
      _isButtonActive = _email.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _email.addListener(_checkPass);
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
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
              height: MediaQuery.of(context).size.height * 0.26,
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
                      "Восстановление пароля",
                      style: AppFonts.s24w700,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    SignInField(
                      hintText: "Email",
                      controller: _email,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                        width: 320,
                        child: CustomBtn(
                            onPressed: _isButtonActive ? () {} : null,
                            title: "Восстановить")),
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
