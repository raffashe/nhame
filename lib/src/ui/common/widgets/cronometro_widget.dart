import 'dart:async';
import 'package:flutter/material.dart';

class CronometroWidget extends StatefulWidget {
  const CronometroWidget({super.key});

  @override
  _CronometroWidgetState createState() => _CronometroWidgetState();
}

class _CronometroWidgetState extends State<CronometroWidget> {
  bool _cronometroRodando = false;
  int _tempoRestante = 600;

  late Timer _cronometroTimer;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Cronômetro'),
      content: Column(
        children: [
          Text('Tempo restante: ${_formatarTempo(_tempoRestante)}'),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            _iniciarPararCronometro();
          },
          child: Text(_cronometroRodando ? 'Parar' : 'Iniciar'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Fechar Cronômetro'),
        ),
      ],
    );
  }

  void _iniciarPararCronometro() {
    setState(() {
      _cronometroRodando = !_cronometroRodando;
    });

    if (_cronometroRodando) {
      _cronometroTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (_tempoRestante > 0) {
          setState(() {
            _tempoRestante--;
          });
        } else {
          _pararCronometro();
        }
      });
    } else {
      _pararCronometro();
    }
  }

  void _pararCronometro() {
    _cronometroTimer.cancel();
    setState(() {
      _cronometroRodando = false;
    });
  }

  String _formatarTempo(int segundos) {
    int minutos = segundos ~/ 60;
    int segundosRestantes = segundos % 60;
    return '$minutos:${segundosRestantes.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _cronometroTimer.cancel();
    super.dispose();
  }
}
