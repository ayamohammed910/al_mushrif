part of '../../../more_imports.dart';

class ChatBubble extends StatelessWidget {
  final ChatModel model;

  const ChatBubble({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final bool isMyMessage = model.isMyMessage;

    return Column(
      crossAxisAlignment: isMyMessage
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        CustomText(
          model.time,
          textStyle: const TextStyle(
            color: Colors.grey,
            fontSize: AppSizes.fs12,
          ),
        ),
        const SizedBox(height: AppSizes.h8),
        Container(
          padding: const EdgeInsets.all(AppSizes.p12),
          margin: const EdgeInsets.only(bottom: AppSizes.p16),
          decoration: BoxDecoration(
            color: isMyMessage ? AppColors.primary : Colors.grey.shade300,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(18),
              topRight: const Radius.circular(18),
              bottomLeft: isMyMessage
                  ? const Radius.circular(0)
                  : const Radius.circular(18),
              bottomRight: isMyMessage
                  ? const Radius.circular(18)
                  : const Radius.circular(0),
            ),
          ),
          child: CustomText(
            model.message,
            textStyle: TextStyle(
              color: isMyMessage ? AppColors.white : AppColors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class ChatModel {
  final String message;
  final String time;
  final bool isMyMessage;

  ChatModel({
    required this.message,
    required this.time,
    required this.isMyMessage,
  });
}
