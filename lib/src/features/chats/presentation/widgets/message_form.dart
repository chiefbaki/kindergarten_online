import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class MessageForm extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  const MessageForm(
      {super.key,
      required this.textStyle,
      required this.controller,
      required this.focusNode});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        focusNode: focusNode,
        controller: controller,
        style: textStyle.titleSmall!.copyWith(color: AppColors.black),
        keyboardType: TextInputType.text,
        maxLines: null,
        autocorrect: true,
        autofocus: true,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            hintText: S.of(context).inputMessage,
            hintStyle:
                textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
            border: InputBorder.none,
            enabledBorder: _underlineInput(),
            focusedBorder: _underlineInput()),
      ),
    );
  }

  UnderlineInputBorder _underlineInput() {
    return const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGrey));
  }
}