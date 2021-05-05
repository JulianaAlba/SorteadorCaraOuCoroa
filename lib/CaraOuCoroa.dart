import 'package:flutter/material.dart';
import 'package:quinto_app_flutter/TelaSorteio.dart';
import 'dart:math';

class CaraOuCoroa extends StatefulWidget {
  @override
  _CaraOuCoroaState createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {

  void _abrirTelaSorteio(){

    List <String> itens = ["cara", "coroa"];
    int numero = Random().nextInt(itens.length);
    String resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaSorteio(resultado), //passo um parâmetro de string que é solicitado na outra classe, pois a mesma tem um construtor que solicita a entrada de um valor em string, referente ao "resultado do sorteio"
        ),
    );

    // Se a rota dor iniciada no main, chamamos diretamente assim
    //Navigator.pushNamed(context, "/rotaTelaSorteio");

  }


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        //usar sempre o 0xff na frente do código de cor hexadecimal 
        backgroundColor: Color(0xff61bd86),
        //define o código rgb e mais o valor de opacidade/transparência da cor. Onde zero é totalmente transparente e acaba aparecendo a cor de fundo preta do cel e o valor um é cor bem sólida conforme a original do rgb escolhido
        //backgroundColor: Color.fromRGBO(0, 153, 0, 1),

        body: Center(
          child: SingleChildScrollView(
            child:
            Container(

              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

              child: Column(

                //Distribuição no meio da tela, com todos os itens da coluna, com espaçamentos iguais
                //mainAxisAlignment: MainAxisAlignment.center,
                //Iniciando da esquerda da tela
                //crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[

                  Image.asset("imagens/logo.png"),


                  GestureDetector(
                    onTap: _abrirTelaSorteio,
                    child: Image.asset("imagens/botao_jogar.png"),

                  ),


                ],

              ),
            ),
          ),
        ),


      );
  }
}
