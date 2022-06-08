import 'package:flutter/material.dart';

import 'PaginaBichos.dart';
import 'PaginaNumeros.dart';
import 'PaginaVogais.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 3, 
      vsync: this,
      initialIndex: 0
    );
  }

  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom: TabBar(
          indicatorWeight: 4, //Altura do indicador //Padrão 2
          indicatorColor: Colors.white, //Cor do indicador 
          labelStyle: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold
          ),
          //labelColor: Colors.green, //Cor escrita do label
          //unselectedLabelColor: Colors.purple, //label não selecionado fica nessa cor
          controller: _tabController,
          tabs: [
            Tab(
              text: "Bichos"
            ),
            Tab(
              text: "Números"
            ),
            Tab(
              text: "Vogais"
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PaginaBichos(),
          PaginaNumeros(),
          PaginaVogais(),
        ]
      ),
    );
  }
}
