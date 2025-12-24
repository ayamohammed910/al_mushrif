part of '../../../more_imports.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final TextEditingController messageController = TextEditingController();

  final List<ChatModel> messages = [
    ChatModel(
      message: 'how to contact with customer service',
      time: '17 May 0008 - 04:19 PM',
      isMyMessage: true,
    ),
    ChatModel(
      message: 'You can contact us via chat or email.',
      time: '17 May 0008 - 04:20 PM',
      isMyMessage: false,
    ),
    ChatModel(message: '??', time: '17 May 0008 - 04:23 PM', isMyMessage: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,

      appBar: CustomAppBar(title: 'Support'),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(AppSizes.p16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(model: messages[index]);
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(AppSizes.p12),
            decoration: BoxDecoration(
              color: AppColors.ScafoldBackground,
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 4),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hint: 'Enter Your Message',
                    controller: messageController,
                    suffixIcon: Icons.attach_file_outlined,
                    onSuffixTap: () {},
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.red, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
