import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

import '../../generated/locale_keys.g.dart';

enum BzcRedirectionType { buy, receive }

class BzcRedirectDialog extends StatefulWidget {
  final BzcRedirectionType redirectionType;

  const BzcRedirectDialog({required this.redirectionType});

  @override
  State<BzcRedirectDialog> createState() => _BzcRedirectDialogState();
}

class _BzcRedirectDialogState extends State<BzcRedirectDialog> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.myWhite,
            AppColors.myPink,
            AppColors.myPink,
          ],
        ),
      ), // Adjust the height as needed
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 280,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    LocaleKeys.modal_redirection_title.tr(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      //color: AppColors.myTextDarkSoft,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.redirectionType == BzcRedirectionType.buy
                            ? LocaleKeys.modal_redirection_payment_message.tr()
                            : LocaleKeys.modal_redirection_recieving_message
                                .tr(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          //color: AppColors.myTextDarkSoft,
                        ),
                      ),
                      //SizedBox(height: 20),
                      Text(
                        LocaleKeys.modal_redirection_redirect_message.tr(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          //color: AppColors.myTextDarkSoft,
                        ),
                      ),
                      Text(
                        LocaleKeys.modal_redirection_text3.tr(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          color: AppColors.myDark,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        checkColor: AppColors.myWhite,
                        side: const BorderSide(
                          color: AppColors.primary,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                      //SizedBox(width: 10),
                      Text(
                        LocaleKeys.modal_redirection_check.tr(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          color: AppColors.myDark,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.myWhite,
                        ),
                        onPressed: () {
                          Navigator.pop(context); // Close the modal screen
                        },
                        child: Text(LocaleKeys.modal_redirection_ok.tr()),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
