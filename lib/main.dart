import 'package:flutter/material.dart';

import 'package:nhame/src/ui/common/infra/data/data.dart';
import 'package:nhame/src/ui/views/receita_view.dart';
import 'package:provider/provider.dart';

import 'src/ui/common/models/receita_model.dart';
import 'src/ui/common/viewmodels/receita_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ReceitaViewModel(
            ReceitaModel(
              criarListaIngredientes(),
              criarListaPassos(),
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receita de Bolo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ReceitaView(),
    );
  }
}
