import 'package:flutter/material.dart';
import 'package:taximetro_aplicattion/data/calcula_valor_viagem.dart';
import 'package:taximetro_aplicattion/ui/home_page.dart';

void main() {
  final calculaValorViagem = CalcularValorViagem(
    minutoMaximo: 20,
    kmMaximo: 10,
  );

  return runApp(
    MaterialApp(
      home: HomePage(),
    )
  );
}

