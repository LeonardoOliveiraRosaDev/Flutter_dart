// importar recursos necessários
import 'package:flutter/material.dart';
import 'item_lista_widget.dart';
import '../model/fonte_dados.dart';
import '../model/produto.dart';
import 'app_rota.dart';

//definir o widgete/componente
class ListaProdutosWidget extends StatelessWidget{
  // 1ª passo - definir uma propriedade para receber a fonte de dados
  // já estabelecidas anteriormente
  final lista = FONTE_DADOS;

  // 2ª passo - definir a propriedade title para ser referenciada no construtor
  // quando este construtor for chamado sera necessario oferecer um valor para
  // esta propriedade
  String title;

  // 3ª passo - definir o construtor da classe e devidamente identifica-la
  ListaProdutosWidget({Key? key, required this.title}): super(key: key);

  // NOVO PASSO - NAVEGAÇÃO: criar um método/função (restrito a este contexto)
  // para auxiliar a navegação da tela principal para a tela secundária
  void _navegarParaDetal(BuildContext  context, Produto produto ){
    Navigator.pushNamed(context,
    AppRota.TELA_DETALHE,
      arguments: produto
    );

  }

  // 4ª passso - construção da view Final  ou Completa.
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // parte superior da tela
      appBar: AppBar(
        title: Text(
          this.title,
        ),
      ),
      // parte inferior da view
      body: ListView.builder(
        // itemCount - assume o papel de contabilizar a quantidade
        // de itens de uma coleção de dados
        itemCount: lista.length,
        // construir a lista propriamente dita
        itemBuilder: (context, index){
          return InkWell(
            child: ItemListaWidget(
              produto: lista[index], key: key,
            ),
            onTap: () => _navegarParaDetal(context, lista[index]),
          );
        },
      ),
    );
  }
}