import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/message_form.dart';

class BottomChatArea extends StatelessWidget {
  const BottomChatArea({
    super.key,
    required FocusNode focusNode,
    required this.textStyle,
    required TextEditingController msgController,
  })  : _focusNode = focusNode,
        _msgController = msgController;

  final FocusNode _focusNode;
  final TextTheme textStyle;
  final TextEditingController _msgController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.h,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MessageForm(
              focusNode: _focusNode,
              textStyle: textStyle,
              controller: _msgController,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                  color: AppColors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
