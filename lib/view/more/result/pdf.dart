import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';
 
class WebViewTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WebViewTestState();
  }
}
 
class _WebViewTestState extends State<WebViewTest> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadLocalHtml();
  }
  //
  final html = '''<!DOCTYPE html>
  <html>
  <body>
  <h1>THis is heading</h1>
  <h1>THis is heading</h1>
  <h1>THis is heading</h1>
  <h1>THis is heading</h1>
  </body>
  </html>''';
  void loadLocalHtml()async{
   // final html = await rootBundle.loadString(filePath);
    final url = Uri.dataFromString(
      html,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    ).toString();
    webViewController!.loadFile(url);
  }
   WebViewController? webViewController;
  String filePath = 'files/test.html';
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Webview Demo')),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (_webViewController){
          
          webViewController = _webViewController;
          loadLocalHtml();
        },
      ),
    );
  }
 
  
}