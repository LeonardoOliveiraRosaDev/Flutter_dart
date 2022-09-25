// importar os arquivos necessarios
import 'package:flutter/material.dart';
import '../model/produto.dart';


// definir o widget/componentes
class TelaDetalheWidget extends StatelessWidget{
  // 1ª passo - a propriedade que servira como parametro do construtor da classe
  // onde sera atribuido o titulo do componente.
  final String title;

  // 2ª passo - definir o construtor da classe e, devidamente, identifica-lo
 // para futuras comunicações entre componentes - se necessário for.
  const TelaDetalheWidget({Key? key, required this.title}): super(key: key);

  //3ª passo - contruir a view
  @override
  Widget build(BuildContext context){
    // criar uma propriedade com o objetivo de receber como valor o contexto de
    // dados da tela de lista e através do roteamento referenciar estes dados
    // como elementos de uso do model Produto
    final produto = ModalRoute.of(context)!.settings.arguments as Produto;
    return Scaffold(
      // parte superior da tela
      appBar: AppBar(
        title: Text(
          produto.nome
        ),
      ),
        // parte inferior da tela
      body: Column(
        children: [
          Image.asset(produto.imagem),
          SizedBox(height: 10,
          ),
          Text(
            produto.categoria,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            produto.descricao,
            ),
        ],
      ),

      //criar um botão flutuante para oferecer uma interatividade + para o usuario
      floatingActionButton: FloatingActionButton(
        child:  Icon(Icons.favorite_border),
        //associar um evento ao float Button
        onPressed: (){
          //criar uma propriedade para receber como valort um novo widget
          final snackbar = SnackBar(content: Text(
            '${produto.nome} foi marcado como favorito!'
          ),
            backgroundColor: (Colors.black12),
            action: SnackBarAction(
              label: 'Ok',
              onPressed: (){
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
      ),
    );
  }
}