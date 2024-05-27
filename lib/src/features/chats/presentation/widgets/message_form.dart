import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class MessageForm extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  const MessageForm(
      {super.key, required this.controller, required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        focusNode: focusNode,
        controller: controller,
        style: context.textTheme.titleSmall!.copyWith(color: AppColors.black),
        keyboardType: TextInputType.text,
        maxLines: null,
        autocorrect: true,
        autofocus: true,
        decoration: InputDecoration(
            contentPadding: REdgeInsets.all(12),
            hintText: S.of(context).inputMessage,
            hintStyle: context.textTheme.displaySmall!
                .copyWith(color: AppColors.lightGrey),
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
