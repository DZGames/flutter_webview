import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  final Completer<WebViewController>_controller = Completer<WebViewController>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Título"),
          centerTitle: true,
          backgroundColor: Color(0xFF2D2D2D),
        ),
        body: Center(
          child: WebView(
            initialUrl: 'https://www.google.com/',
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
