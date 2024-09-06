import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;
  final String? repliedMessage;
  final String time;

  const MessageBubble({
    required this.message,
    required this.isSentByMe,
    required this.time,
    this.repliedMessage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onLongPress: () {
          final RenderBox overlay =
              Overlay.of(context).context.findRenderObject() as RenderBox;
          final RenderBox renderBox = context.findRenderObject() as RenderBox;
          final position =
              renderBox.localToGlobal(Offset.zero, ancestor: overlay);

          showMenu(
            context: context,
            position: RelativeRect.fromLTRB(
              position.dx,
              position.dy - renderBox.size.height,
              position.dx + renderBox.size.width,
              position.dy,
            ),
            items: [
              PopupMenuItem(
                value: 'copy',
                child: Text(LocaleKeys.conversation_copy_message.tr()),
              ),
              PopupMenuItem(
                value: 'reply',
                child: Text(LocaleKeys.conversation_reply_message.tr()),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Text(LocaleKeys.conversation_delete_message.tr()),
              ),
            ],
          ).then((value) {
            if (value == 'copy') {
              // Copier le message
            } else if (value == 'reply') {
              // Répondre au message
            } else if (value == 'delete') {
              // Supprimer le message
            }
          });
        },
        child: Row(
          crossAxisAlignment:
              isSentByMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          mainAxisAlignment:
              isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (!isSentByMe)
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: _buildAvatar(url: ''),
              ),
            const SizedBox(width: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: isSentByMe
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  ChatBubble(
                    clipper: isSentByMe
                        ? ChatBubbleClipper5(type: BubbleType.sendBubble)
                        : ChatBubbleClipper2(type: BubbleType.receiverBubble),
                    alignment:
                        isSentByMe ? Alignment.topRight : Alignment.topLeft,
                    backGroundColor:
                        isSentByMe ? AppColors.primary : Colors.blue[100],
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: Column(
                        children: [
                          if (repliedMessage != null) ...[
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 8.0,
                              ),
                              margin: const EdgeInsets.only(bottom: 8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    margin: const EdgeInsets.fromLTRB(
                                      0.0,
                                      0.0,
                                      0.0,
                                      5.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: AppColors.myGray,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          isSentByMe
                                              ? LocaleKeys.conversation_username
                                                  .tr()
                                              : 'You',
                                          style: const TextStyle(
                                            color: AppColors.myBlue,
                                          ),
                                        ),
                                        Text(
                                          repliedMessage!,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            color: AppColors.myDark,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    message,
                                    style: TextStyle(
                                      color: isSentByMe
                                          ? AppColors.myWhite
                                          : AppColors.myDark,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ] else ...[
                            Text(
                              message,
                              style: TextStyle(
                                color: isSentByMe
                                    ? AppColors.myWhite
                                    : AppColors.myDark,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 2),
                    child: Row(
                      mainAxisAlignment: isSentByMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        isSentByMe
                            ? const Icon(
                                Icons.check,
                                color: AppColors.primary,
                                size: 15,
                              )
                            : const SizedBox(),
                        const SizedBox(width: 6),
                        Text(
                          time,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 185, 185, 185),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5),
            if (isSentByMe)
              _buildAvatar(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwfRFQm57WWEJxm9TRZp9hD8CKq00c3K4rZQ&s'),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar({required String url}) {
    return CircleAvatar(
      backgroundImage: NetworkImage(
        url.isNotEmpty
            ? url
            : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwfRFQm57WWEJxm9TRZp9hD8CKq00c3K4rZQ&s',
      ),
      onBackgroundImageError: (exception, stackTrace) {},
      radius: 20.0,
    );
  }
}
