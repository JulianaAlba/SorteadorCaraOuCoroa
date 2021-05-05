import 'package:flutter/material.dart';
import 'package:quinto_app_flutter/CaraOuCoroa.dart';
import 'package:quinto_app_flutter/TelaSorteio.dart';

void main(){

  runApp(MaterialApp(

    //Outra forma de utilizar o Navigator.push, ou seja, iniciando no main, todas as rotas existentes no projeto antes e depois, basta chamar as rotas das páginas  diretamente nas outras telas ou quando for o caso
    //No caso desse projeto, a "TelaSorteio" possui um construtor, por isso ainda vamos aprender como criar rotas, passando parâmetros dentro

    /*
    initialRoute: "/",
    routes: {
      "/rotaTelaSorteio": (context) = TelaSorteio(resultado),
    },*/

    debugShowCheckedModeBanner: false,
    home: CaraOuCoroa(),


  ));

}