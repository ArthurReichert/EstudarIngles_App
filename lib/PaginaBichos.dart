import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class PaginaBichos extends StatefulWidget {
  PaginaBichos({Key? key}) : super(key: key);

  @override
  State<PaginaBichos> createState() => _PaginaBichosState();
}

class _PaginaBichosState extends State<PaginaBichos> {

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
        "cao.mp3","gato.mp3","leao.mp3","macaco.mp3","ovelha.mp3","vaca.mp3",
      ]
    );
  }

  @override
  Widget build(BuildContext context) {

    //Como faço pra calcular tamanho dos Widgets para diferentes resoluções?
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2, //Quantidade de colunas que quer utilizar
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2, //Como é a exibição do gridview (distancia) //Usa para ter boa exibição tanto android quanto IOS
      //scrollDirection: Axis.vertical, //Scroll para qual lado
      children: [
        GestureDetector(
          onTap: (){
            _executar("cao");
          },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("gato");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("leao");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("macaco");
          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("ovelha");
          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("vaca");
          },
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}