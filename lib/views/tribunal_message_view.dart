import 'dart:io';

import 'package:consulta_oposiciones/view_models/tribunal_message_view_model.dart';
import 'package:consulta_oposiciones/utils/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var _htmlContent = "<div>Hola</div>";
var _htmlAnterior = "";
class TribunalMessageView extends StatefulWidget {

  const TribunalMessageView({Key? key}) : super(key: key);

  @override
  State<TribunalMessageView> createState() => _TribunalMessageViewState();
}

class _TribunalMessageViewState extends State<TribunalMessageView> {

  TribunalMessageViewModel viewModel= TribunalMessageViewModel();


  @override
  Widget build(BuildContext context) {
    initView();
    return Scaffold(
      body: Column(
          children:
          [/*Lottie.asset('images/animations/99274-loading.json'),*/
          Html(
          data: _htmlContent
          ),
            Text("Cargando...",
              style: TextStyle(fontSize: 25,color: Colors.cyan, fontFamily: 'Spartan'),)]
      ),
    );


  }

  void initView(){
    try{
print("Prueba");
      URLUtils utils = URLUtils();
      var mostrar=0;
      while(true) {
        print("Llamando a la web");
        final Future<String> response = utils.fetchPost();
        response.then((String result) {
          _htmlContent = result;
        });
        print("Durmiendo 1 minuto");
        mostrar++;
        sleep(const Duration(minutes: 1));
        if(_htmlAnterior==""){
          _htmlAnterior = _htmlContent;
        }
        if(_htmlAnterior!=_htmlContent || mostrar == 1){
          Alert(
            context: context,
            type: AlertType.error,
            title: "Cambio",
            desc: "Los datos de informática han cambiado",
            buttons: [
              DialogButton(
                child: Text(
                  "Ok",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                width: 120,
              )
            ],
          ).show();
          break;
        }
      }

      /*
      WeatherModel wm = await viewModel.localizeUserAndGetWeather();
      print(wm);
      LocationViewModel locationViewModel=LocationViewModel(wm);
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LocationView(viewModel: locationViewModel);
      }));*/
    }catch(error){
      Alert(
        context: context,
        type: AlertType.error,
        title: "Error",
        desc: "Ha ocurrido un error al intentar localizar al usuario. ${error.toString()}",
        buttons: [
          DialogButton(
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }
  }
}
