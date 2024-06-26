import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/message_form.dart';

class BottomChatArea extends StatelessWidget {
  const BottomChatArea(
      {super.key,
      required FocusNode focusNode,
      required TextEditingController msgController,
      required this.onPressed})
      : _focusNode = focusNode,
        _msgController = msgController;

  final FocusNode _focusNode;

  final TextEditingController _msgController;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.h,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: REdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MessageForm(
              focusNode: _focusNode,
              controller: _msgController,
            ),
            IconButton(
                onPressed: onPressed,
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
