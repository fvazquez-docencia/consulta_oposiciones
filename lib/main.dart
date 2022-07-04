import 'package:consulta_oposiciones/views/tribunal_message_view.dart';
//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();


void main() {
  //para que se vean los iconos de sistema en blanco
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  //flutterLocalNotificationsPlugin.initialize(InitializationSettings(),onSelectNotification: notification);
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

Future notification(String payload) async{
  //showDialog(context: context, builder: () => AlertDialog(title: const Text("Hola"),content: Text("Payload: $payload"),))
}