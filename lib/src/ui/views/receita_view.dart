import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'package:nhame/src/ui/common/widgets/cronometro_widget.dart';
import 'package:nhame/src/ui/common/viewmodels/receita_viewmodel.dart';
import 'package:provider/provider.dart';

class ReceitaView extends StatelessWidget {
  const ReceitaView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ReceitaViewModel>(context);
    var logger = Logger();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Receita de Bolo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            viewModel.iniciarReceita(logger);
            _exibirCronometro(context);
          },
          child: const Text('Iniciar Receita'),
        ),
      ),
    );
  }

  void _exibirCronometro(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CronometroWidget();
      },
    );
  }
}
