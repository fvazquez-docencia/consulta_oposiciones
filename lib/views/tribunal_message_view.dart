import 'package:consulta_oposiciones/view_models/tribunal_message_view_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


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
          [Lottie.asset('images/animations/99274-loading.json'),
            Text("Cargando...",
              style: TextStyle(fontSize: 25,color: Colors.cyan, fontFamily: 'Spartan'),)]
      ),
    );
  }

  void initView(){
    try{
      WeatherModel wm = await viewModel.localizeUserAndGetWeather();
      print(wm);
      LocationViewModel locationViewModel=LocationViewModel(wm);
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LocationView(viewModel: locationViewModel);
      }));
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
