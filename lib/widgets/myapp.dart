import 'package:flutter/material.dart';
import 'tela_detalhe_widget.dart';
import 'lista_produto_widget.dart';
import 'splash.dart';
import 'app_rota.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este é o componente pricipal do projeto. Aquilo que eu quiser que seja
  // renderizado na tela preciso colocar dentro do componente.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // aqui, dentro do construtor MaterialApp é necessario indicar
      // renderizado na tela preciso colocar dentro do componente
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ListaProdutosWidget(title:'Agentes do Valorant'),
      home: Splash(),
      routes: {
        AppRota.TELA_DETALHE: (context) => TelaDetalheWidget(title: 'Detalhe do Agente')
      },
    );
  }
}