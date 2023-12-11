import 'package:logger/logger.dart';

class Ingrediente {
  final String nome;
  final double quantidade;
  final String unidade;

  Ingrediente(this.nome, this.quantidade, this.unidade);

  @override
  String toString() {
    return '$quantidade $unidade de $nome';
  }
}

class Passo {
  final String descricao;

  Passo(this.descricao);

  void executar(Logger logger) {
    logger.i(descricao);
  }
}

class ReceitaModel {
  List<Ingrediente> ingredientes;
  List<Passo> passos;

  ReceitaModel(this.ingredientes, this.passos);

  void executarReceita(Logger logger) {
    for (var passo in passos) {
      passo.executar(logger);
    }

    logger.i("A massa está pronta para assar!");
  }
}
