import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nhame/src/ui/common/models/receita_model.dart';

class ReceitaViewModel with ChangeNotifier {
  final ReceitaModel _receitaModel;

  ReceitaViewModel(this._receitaModel);

  void iniciarReceita(Logger logger) {
    _receitaModel.executarReceita(logger);
    notifyListeners();
  }
}
