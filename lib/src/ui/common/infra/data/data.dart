import 'package:nhame/src/ui/common/models/receita_model.dart';

List<Ingrediente> criarListaIngredientes() {
  return [
    Ingrediente('Farinha', 250, 'g'),
    Ingrediente('Açúcar', 150, 'g'),
  ];
}

List<Passo> criarListaPassos() {
  return [
    Passo('Separe a gema da clara'),
    Passo(
        'Bata a clara até ficar no ponto firme de neve, após chegar no ponto, separe e reserve'),
    Passo(
        'Na batedeira, bata as gemas junto com 250g de açúcar refinado por 1 min'),
    Passo('Após 1 min adicionar 180 ml de leite morno, bater por mais 2 min'),
    Passo('Após os 2 min, adicionar 250g de trigo e bater por mais 30 s.'),
    Passo(
        'Após cumprir o tempo determinado, adicionar 15g de fermento + as claras em neve. Essa etapa precisa mexer de forma manual, dispensando o uso da batedeira.'),
  ];
}

ReceitaModel criarReceitaPadrao() {
  var ingredientes = criarListaIngredientes();
  var passos = criarListaPassos();
  return ReceitaModel(ingredientes, passos);
}
