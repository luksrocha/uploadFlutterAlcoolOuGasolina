import 'package:flutter/material.dart';
import 'loading-button.widget.dart';

class Success extends StatelessWidget {

  var result = "";
  Function reset;

  Success({
    @required this.result, // O TEXTO A SER PASSADO DENTRO DO WIDGET DE 'RESPOSTA' 
    @required this.reset // FUNÇÃO PARA RESETAR OS VALORES 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25)
      ), // AQUI É AONDE CRIAMOS A CAIXA EM VOLTA DE RESPOSTA
      child:Column(
        children:<Widget>[
          SizedBox(height: 50,), // ESPAÇAMENTO
          Text(result,
            style:TextStyle(
              color:Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: 'Big Shoulders Display'
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height:20),

          LoadingButton(busy: false, func: reset, invert: true, text: 'CALCULAR NOVAMENTE') // AQUI É O BOTÃO DE CALCULAR
        ]
      )
    );
  }
}