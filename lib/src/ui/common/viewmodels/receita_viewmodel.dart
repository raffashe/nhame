import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nhame/src/ui/common/infra/data/data.dart';

import 'package:nhame/src/ui/common/models/receita_model.dart';

class ReceitaViewModel with ChangeNotifier {
  final ReceitaModel _receitaModel;

  ReceitaViewModel(ReceitaModel receitaModel)
      : _receitaModel = criarReceitaPadrao();

  void iniciarReceita(Logger logger) {
    _receitaModel.executarReceita(logger);
    notifyListeners();
  }
}
