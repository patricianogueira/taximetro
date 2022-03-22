import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taximetro_aplicattion/controller/home_controller.dart';
import 'package:taximetro_aplicattion/controller/home_states.dart';
import 'package:taximetro_aplicattion/data/calcula_valor_viagem.dart';
import 'package:taximetro_aplicattion/ui/home_page.dart';

void main() {
  final calculaValorViagem = CalcularValorViagem(
    minutoMaximo: 20,
    kmMaximo: 10,
  );

  return runApp(
    BlocProvider<HomeController>(
      create: (_) => HomeController(
        calcularValorViagem: calculaValorViagem
      ),
      child: const MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}

