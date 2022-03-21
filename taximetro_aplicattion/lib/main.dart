import 'package:flutter/material.dart';
import 'package:taximetro_aplicattion/data/calcula_valor_viagem.dart';

void main() {
  final calculaValorViagem = CalcularValorViagem(
    minutoMaximo: 20,
    kmMaximo: 10,
  );

  final valorViagem = calculaValorViagem(km: 10, minuto: 30);
}

