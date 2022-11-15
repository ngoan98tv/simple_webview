import 'package:flutter/material.dart';
import 'package:simple_webview/webview.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final ctrl = TextEditingController(text: "http://192.168.1.106:3000");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Webview"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ctrl,
              decoration: const InputDecoration(
                hintText: "Enter an URL",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                if (ctrl.text.isEmpty) return;
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => MyWebView(
                      initialUrl: ctrl.text,
                    ),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("OPEN WEBVIEW"),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
