class CalcularValorViagem{
  final int kmMaximo;
  final int minutoMaximo;

  CalcularValorViagem({required this.kmMaximo, required this.minutoMaximo});

  double call({
    required int km, 
    required int minuto
  }){
    return _calcularValorKm(km) + _calcularValorMinuto(minuto);
  }

  double _calcularValorKm(int km){
    if(km <= kmMaximo) {
      return km * 0.5;
    } 
    return((km - kmMaximo) * 0.3) + kmMaximo * 0.5;
  }

  double _calcularValorMinuto(int minuto){
    if(minuto <= minutoMaximo) {
      return minuto * 0.7;
    } 
    return((minuto - minutoMaximo) * 0.5) + minutoMaximo * 0.7;
  }
}