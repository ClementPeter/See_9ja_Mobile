import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';
import 'package:see_9ja/constants.dart';

class AssistantPage extends StatelessWidget {
  const AssistantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'See9ja Support',
          style: TextStyle(color: lightGreen),
        ),
        elevation: 0,
      ),
      body: Tawk(
        directChatLink:
            'https://tawk.to/chat/637034bddaff0e1306d71c9a/1ghn4s1u0',
        visitor: TawkVisitor(
          name: 'See9ja Customer #1',
          email: '#1@gmail.com',
        ),
        onLoad: () {
          print('Hello Tawk!');
        },
        onLinkTap: (String url) {
          print(url);
        },
        placeholder: Center(
          child: CircularProgressIndicator(
            color: lightGreen,
          ),
        ),
      ),
    );
  }
}
