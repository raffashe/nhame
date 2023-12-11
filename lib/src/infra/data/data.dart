// common/data.dart

import 'package:nhame/src/ui/common/models/receita_model.dart';

// Função para criar a lista de ingredientes
List<Ingrediente> criarListaIngredientes() {
  return [
    Ingrediente('Farinha', 250, 'g'),
    Ingrediente('Açúcar', 150, 'g'),
    // Adicione outros ingredientes conforme necessário
  ];
}

// Função para criar a lista de passos
List<Passo> criarListaPassos() {
  return [
    Passo('Misture a farinha e o açúcar.'),
    Passo('Adicione os ovos e bata a massa.'),
    // Adicione outros passos conforme necessário
  ];
}
