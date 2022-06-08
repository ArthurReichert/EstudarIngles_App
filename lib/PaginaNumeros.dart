import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class PaginaNumeros extends StatefulWidget {
  PaginaNumeros({Key? key}) : super(key: key);

  @override
  State<PaginaNumeros> createState() => _PaginaNumerosState();
}

class _PaginaNumerosState extends State<PaginaNumeros> {

  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio){

    _audioCache.play(nomeAudio + ".mp3");

  }

  @override
  void initState() {
    super.initState();

    _audioCache.loadAll(
      [
        //Nomes dos arquivos que irao ser pré carregados
        "1.mp3","2.mp3","3.mp3","4.mp3","5.mp3","6.mp3",
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //Quantidade de colunas que quer utilizar
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2, //Como é a exibição do gridview (distancia) //Usa para ter boa exibição tanto android quanto IOS
      //scrollDirection: Axis.vertical, //Scroll para qual lado
      children: [
        GestureDetector(
          onTap: (){
            _executar("1");
          },
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("2");
          },
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("3");
          },
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("4");
          },
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("5");
          },
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("6");
          },
          child: Image.asset("assets/images/6.png"),
        ),
      ],
    );
  }
}