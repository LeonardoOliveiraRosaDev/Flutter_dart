// imports necessários para funcionar
import 'package:flutter/material.dart';
import 'lista_produto_widget.dart';

// esse import é um pacote que sera usado  para oferecer um recurso
//para criar um componente statefull adequadamente !
import 'package:flutter/services.dart';

// definir a classe para ser o widget/componentes Stateful o estado tem um
// comportamento
class Splash extends StatefulWidget{
  // sobrescrever aquilo que originalmente, a superclase (StatefulWidget) traz como
  // recurso para a construção do widget
  @override
  // aqui esta realizada a criação do state da aplicação
  _SplashState createState() => _SplashState();
}

// a descrição do state que srá definida
class _SplashState extends State<Splash>{
  // agora, sera implementada a descrição do state ja referenciado na classe acima
  // sobrescrever aquilo que originalmente, a superclasse traz como recurso
  @override
 // método que defini o state inicial da aplicação
  void initState(){
    super.initState();
    // agora com a referencia feita com o método initState() da superclasse
    // é possivel fazer o uso adequado de seus recursos e customizar o initState()
    // da super classe
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays:[]);
      // o recurso acima possibilita que este componente adotará em relação a tela 
     // principal da aplicação
    Future.delayed(Duration(seconds: 6)).then((_){
      // a estrutura/ recurso que auxilia a nagegação entre telas da aplicação
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ListaProdutosWidget(title: 'Agentes Valorant - By LeLeCo #TaTu')));
    });
    }
  // construir a view
  @override
  Widget build(BuildContext context){
    return Container(
      // definir uma cor de background
      // com hexadecimal. Para isso o Flutter precisa da indicação do prefixo
      // 0xFF
      color: Color(0xFF0A0A0A),
      child: Center(
        child: Container(
          width: 250,
          height: 250,
          child: Image.asset("lib/images/valorant_icon.png"),
        ),
      ),
    );
  }


  }