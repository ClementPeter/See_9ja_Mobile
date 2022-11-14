import 'package:flutter/material.dart';

import 'package:see_9ja/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Accomodation extends StatefulWidget {
  const Accomodation({Key? key}) : super(key: key);

  @override
  State<Accomodation> createState() => _AccomodationState();
}

class _AccomodationState extends State<Accomodation> {
  WebViewController? _controller;

  bool isLoading = true;

  final link = "https://www.hotels.ng"; //default link of webview
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightGreen,
        title: const Text(
          "Accomodation",
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: WebView(
              initialUrl: link,
              javascriptMode: JavascriptMode.unrestricted,
        
              onWebResourceError: (error) {
                AlertDialog(
                  title: const Text("Error"),
                  backgroundColor: lightGreen,
                  content: const Text("No Internet Connection"),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Try Again'),
                    )
                  ],
                );
              },

              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
          ),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(color: lightGreen),
                )
              : Stack(),
        ],
      ),
    );
  }
}
