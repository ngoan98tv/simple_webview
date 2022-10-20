import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

var html = """ 
<div id='data'></div>
<script>
  localStorage.setItem('a', 12);
  const a = localStorage.getItem('a');
  document.querySelector('#data').innerHTML = a;
</script>
""";

class MyWebView extends StatelessWidget {
  final String initialUrl;

  const MyWebView({super.key, required this.initialUrl});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Scaffold(
      body: WebView(
        initialUrl: initialUrl,
        javascriptMode: JavascriptMode.unrestricted,
        zoomEnabled: false,
      ),
    );
  }
}
