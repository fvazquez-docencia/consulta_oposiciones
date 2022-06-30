import 'package:clima/views/loading_view.dart';
import 'package:consulta_oposiciones/views/tribunal_message_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //para que se vean los iconos de sistema en blanco
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: TribunalMessageView(),
    );
  }
}