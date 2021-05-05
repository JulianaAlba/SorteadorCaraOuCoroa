import 'package:flutter/material.dart';
import 'package:quinto_app_flutter/CaraOuCoroa.dart';

class TelaSorteio extends StatefulWidget {

  String resultadoSorteio;

  //construtor é necessário para passar um valor de uma tela para outr
  TelaSorteio(this.resultadoSorteio);

  @override
  _TelaSorteioState createState() => _TelaSorteioState();
}




class _TelaSorteioState extends State<TelaSorteio> {

  /*
  void _abrirCaraOuCoroa(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CaraOuCoroa()),
    );
  }
*/

  @override
  Widget build(BuildContext context) {

    String caminhoImagem = "imagens/moeda_coroa.png";
    if (widget.resultadoSorteio == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
      //print(caminhoImagem);
    }
    else{
      caminhoImagem = "imagens/moeda_coroa.png";
      //print(caminhoImagem);
    }


    return Scaffold(
      backgroundColor: Color(0xff61bd86),

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

              Image.asset(caminhoImagem),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 10),

                ),

                GestureDetector(
                  onTap: () {
                    //fecha direto a página abertae aparece a que anteriormente estava aberta, e nesse caso não precisa de função igual o push, pq só temos outra tela abaixo que é a principal caraOucoroa
                    Navigator.pop(context);
                    // Se a rota dor iniciada no main, para voltar para a página anterior, basta colocar apenas barra
                    //Navigator.pushNamed(context, "/");

                  },
                    child: Image.asset("imagens/botao_voltar.png"),

                ),


              ],

            ),
          ),
        ),
      ),



    );
  }
}
