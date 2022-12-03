import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:see_9ja/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Commute extends StatefulWidget {
  const Commute({Key? key}) : super(key: key);

  @override
  State<Commute> createState() => _CommuteState();
}

class _CommuteState extends State<Commute> {
 WebViewController? _controller;
  //final link = "https://www.lara.ng/";
  final link = "https://beta.lara.ng/";
  //default link of webview
  bool isLoading = true;
  final isWeb = kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightGreen,
        title: const Text("Commute"),
        centerTitle: true,
      ),
      body: isWeb == false?const SizedBox(
            width: double.infinity,
            child: Text(
               "This feature isnt supported for this target platform, Kindly use our Mobile App "),
          ): Stack(
        children: [
          SafeArea(
            child: WebView(
              initialUrl: link,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
          ),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: lightGreen,
                  ),
                )
              : Stack(),
        ],
      ),
    );
  }
}
