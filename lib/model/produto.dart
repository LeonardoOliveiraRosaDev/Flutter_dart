// criar o model domain para a aplicação
class Produto{
  // criar e nomear as propriedades com o modificador final, para garantir
  // a integridade das operações com os dados
  final String nome;
  final String categoria;
  final String pais;
  final String imagem;
  final String descricao;

  // estabelecer o construtor da classe para referenciar, e inicializar
 // cada uma das propriedades.
const Produto({
   required this.nome,
   required this.categoria,
   required this.pais,
   required this.imagem,
   required this.descricao
});
}