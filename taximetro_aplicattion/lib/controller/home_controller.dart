import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taximetro_aplicattion/controller/home_states.dart';
import 'package:taximetro_aplicattion/data/calcula_valor_viagem.dart';

class HomeController extends Cubit<HomeStates>{
final CalcularValorViagem calcularValorViagem;

  HomeController({required this.calcularValorViagem}) : super(HomeStates());

  void calcularValor(){
    final valorCorrida = calcularValorViagem(km: state.km!, minuto: state.minutos!);

    emit(
      HomeStates(
        km: state.km,
        minutos: state.minutos,
        valorCorrida: valorCorrida,
      ),
    );
  }

  void setMinutos(String minutos){
    final valorMin = int.parse(minutos);
    emit(
      HomeStates(
        km: state.km,
        minutos: valorMin,
        valorCorrida: state.valorCorrida,
      ),
    );
  }

  void setKm(String km){
    final valorKm = int.parse(km);
    emit(
      HomeStates(
        km: valorKm,
        minutos: state.minutos,
        valorCorrida: state.valorCorrida,
      ),
    );
  }
}