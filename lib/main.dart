import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ),);
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  var fraseGerada = [
    "A amizade desenvolve a felicidade e reduz o sofrimento, duplicando a nossa alegria e dividindo a nossa dor.",
    "Deve-se temer mais o amor de uma mulher do que o ódio de um homem.",
    "Não existe um caminho para a felicidade. A felicidade é o caminho.",
    "Purifica o teu coração antes de permitires que o amor entre nele, pois até o mel mais doce azeda num recipiente sujo.",
    "Viver é a coisa mais rara do mundo. A maioria das pessoas apenas existe.",
    "Às vezes ouço passar o vento; e só de ouvir o vento passar, vale a pena ter nascido.",
    "Enquanto a cor da pele for mais importante que o brilho dos olhos, haverá guerra.",
    "A suspeita sempre persegue a consciência culpada; o ladrão vê em cada sombra um policial.",
    "É mais fácil obter o que se deseja com um sorriso do que à ponta da espada.",
    "Deus, para a felicidade do homem, inventou a fé e o amor. O Diabo, invejoso, fez o homem confundir fé com religião e amor com casamento.",
    "Saber encontrar a alegria na alegria dos outros, é o segredo da felicidade."
  ];
  var _frase = "Click para gerar uma frase!";
    
       void _exibir(){
         var cont = Random().nextInt(fraseGerada.length);
         setState(() {
            _frase = fraseGerada[cont];
         });
        

     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Frase do dia"),
         backgroundColor: Colors.green,
       ),
       body: Container(
           width:double.infinity,
         padding: EdgeInsets.all(13),
           decoration: BoxDecoration(
           border: Border.all(width: 5, color: Color.fromARGB(255, 16, 61, 7))
         ),
           child: 
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center ,
           children: <Widget>[
             Image.asset("imagens/logo.png"),
             Text(
                   _frase,
               textAlign: TextAlign.justify,
               style: TextStyle(
                 fontSize: 14,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
               ),

               ),
              FloatingActionButton(onPressed: _exibir,
              child: Text("Nova Frase", textAlign: TextAlign.center),
              backgroundColor: Colors.lightGreen,),
             
           ],
         ),
       ),

    );
  }
}