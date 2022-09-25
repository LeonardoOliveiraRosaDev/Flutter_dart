//importar os recursos necessários
import 'package:flutter/material.dart';
import '../model/produto.dart';


// definir o nosso componente visual , da classe StateLessWidget
// para ser usado em outro componente !
class ItemListaWidget extends StatelessWidget{
  // 1ª passo - criar o objeto referencial que auxiliara na composição
  // dos dados distribuidos dentro do item de lista
  final Produto produto;

  // 2ª passo - referenciar o construtor da classe ItemListaWidget
  // o objetivo desta referencia é identificar este widget para que
  // futuramente possa ser estabelecido com ele algum processo de
  // comunicação. Para tanto é necessário identifica-lo e, também
  // identificar o uso da herança.
ItemListaWidget({Key? key, required this.produto}): super(key: key);

// 3ª passo - construir a view do item de lista
@override
  Widget build(BuildContext context){
  return Container(
    // definir o bloco visual principal
    constraints: BoxConstraints(
      maxHeight: 150,
      
    ),
    color: Colors.blue,
    padding: EdgeInsets.all(1),
    margin: EdgeInsets.all(3),
    // bloco visual secundario - aqui sera implementado a estrutura para
    // exibir um unico item de lista - sera card da lissta
    child: Card(
      // elemente organizacional relacionada diretamente ao card é o Row
      // por que ele vai organizar os elementos que compoem o card em linha
      child: Row(
        // DEFINIR O PARAMETRO DE ALINHAMENTO DOS INTENS ORGANIZADOS
        // DENTRO DO CARD
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(produto.imagem),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1),
                  child: Column(
                    // aqui dentro do container os elementos textuais
                    // serão organizados um a um seguindo a disposição
                    // vertical.
                    // definir o paramentro de alinhamento dos intens organizados
                    // dentro do elemento Column
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                      produto.nome,
                      style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        produto.categoria,
                        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        produto.pais,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
      ),
    ),
  );
 }
}
