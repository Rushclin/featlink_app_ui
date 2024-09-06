import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/message_input.dart';
import 'widgets/message_bubble.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  String? replyingMessage;
  int? replyingToIndex;

  static List<Map<String, dynamic>> messages = [
    {
      'message': LocaleKeys.conversation_message_1.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_1.tr(),
      'repliedMessage': null,
    },
    {
      'message': LocaleKeys.conversation_message_2.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_2.tr(),
      'repliedMessage': null,
    },
    {
      'message': LocaleKeys.conversation_message_3.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_3.tr(),
      'repliedMessage': null,
    },
    {
      'message': LocaleKeys.conversation_message_4.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_4.tr(),
      'repliedMessage': null,
    },
    {
      'message': LocaleKeys.conversation_message_5.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_5.tr(),
      'repliedMessage': LocaleKeys.conversation_message_4.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_6.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_6.tr(),
      'repliedMessage': LocaleKeys.conversation_message_5.tr(),
    },
  ];

  void onSwipeReply(int index) {
    setState(() {
      replyingMessage = messages[index]['message'];
      replyingToIndex = index;
    });
  }

  void sendMessage(String newMessage) {
    setState(() {
      messages.add({
        'message': newMessage,
        'isSentByMe': true,
        'time': 'Now',
        'repliedMessage': replyingMessage,
      });
      // Clear the reply context after sending
      replyingMessage = null;
      replyingToIndex = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.myWhite,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CircleAvatar(
              backgroundImage: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwfRFQm57WWEJxm9TRZp9hD8CKq00c3K4rZQ&s',
              ),
              onBackgroundImageError: (exception, stackTrace) {},
              radius: 20.0,
            ),
            const SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.conversation_username.tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      LocaleKeys.conversation_online.tr(),
                      style: const TextStyle(fontSize: 12.0),
                    ),
                    const SizedBox(width: 4.0),
                    const Icon(
                      Icons.circle,
                      color: AppColors.primary,
                      size: 7.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: AppColors.myGray.withOpacity(0.5),
            height: 1.5,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'profile') {
                // Action to view profile
              } else if (value == 'delete') {
                // Action to delete conversation
              } else if (value == 'block') {
                // Action to block the user
              }
            },
            color: AppColors.primary,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'profile',
                child: ListTile(
                  leading: const Icon(Icons.person, color: AppColors.myWhite),
                  title: Text(
                    LocaleKeys.conversation_profile.tr(),
                    style: const TextStyle(color: AppColors.myWhite),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'delete',
                child: ListTile(
                  leading: const Icon(Icons.delete, color: AppColors.myWhite),
                  title: Text(
                    LocaleKeys.conversation_delete_conversation.tr(),
                    style: const TextStyle(color: AppColors.myWhite),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'block',
                child: ListTile(
                  leading: const Icon(Icons.block, color: AppColors.myWhite),
                  title: Text(
                    LocaleKeys.conversation_block_user.tr(),
                    style: const TextStyle(color: AppColors.myWhite),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (direction) {
                    onSwipeReply(index); // Capture the swiped message
                  },
                  background: Container(
                    color: Colors.blue,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20.0),
                    child: const Icon(Icons.reply, color: Colors.white),
                  ),
                  child: MessageBubble(
                    message: message['message'],
                    isSentByMe: message['isSentByMe'],
                    time: message['time'],
                    repliedMessage:
                        message['repliedMessage'], // Pass replied message
                  ),
                );
              },
            ),
          ),
          if (replyingMessage != null)
            Container(
              padding: const EdgeInsets.all(8.0),
              color: AppColors.myGray,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: AppColors.myGray600,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 5.0,
                            color: AppColors.myBlue,
                          ),
                          const SizedBox(width: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LocaleKeys.conversation_username.tr(),
                                style: const TextStyle(color: AppColors.myBlue),
                              ),
                              Text(
                                '$replyingMessage',
                                style: const TextStyle(color: AppColors.myDark),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      setState(() {
                        replyingMessage = null;
                        replyingToIndex = null;
                      });
                    },
                  ),
                ],
              ),
            ),
          const MessageInput(), // Handle new message
        ],
      ),
    );
  }
}
