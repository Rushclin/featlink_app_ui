import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    final minHeight = MediaQuery.of(context).size.height * 0.070;
    final maxHeight = 4 * minHeight;
    return Container(
      color: AppColors.myWhite,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.add_circle, color: AppColors.myDark),
            onPressed: () {},
          ),
          Expanded(
            child: Container(
              constraints: BoxConstraints(
                minHeight: minHeight,
                maxHeight: maxHeight,
              ),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.myWhite,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: AppColors.myGray),
              ),
              child: TextFormField(
                minLines: 1,
                maxLines: 6,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: LocaleKeys.conversation_your_message.tr(),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ), // Centrer le texte verticalement
                  suffixIcon: const IconButton(
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: AppColors.myDark,
                    ),
                    onPressed: null,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send, color: AppColors.primary),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
