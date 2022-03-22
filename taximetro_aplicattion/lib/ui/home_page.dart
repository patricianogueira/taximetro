import 'package:flutter/material.dart';
import 'package:taximetro_aplicattion/resources/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  void showRaceValue(BuildContext context, double valorCorrida){
    showDialog(
      context: context, 
      builder: (_) => AlertDialog(
        content: Center(
          child: Text('O valor da sua corrida custou R\$ $valorCorrida,00.'),
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          Strings.appName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/taxi.png',
              height: 300,
              width: 300,
            ),
            const Text(
              Strings.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: Strings.km),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              decoration: InputDecoration(
                labelText: Strings.minutos,
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              child: const Text(Strings.calcularValor),
              onPressed: () => showRaceValue(context, 20),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                fixedSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
               ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}