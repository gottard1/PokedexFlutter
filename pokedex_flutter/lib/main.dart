import 'dart:io';

import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(App());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    HttpClient client = super.createHttpClient(context);
    client.findProxy = (uri) {
      return 'PROXY localhost:9090; DIRECT';
    };
    return client;
  }
}
