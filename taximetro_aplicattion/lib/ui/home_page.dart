import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taximetro_aplicattion/controller/home_controller.dart';
import 'package:taximetro_aplicattion/controller/home_states.dart';
import 'package:taximetro_aplicattion/resources/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return BlocConsumer<HomeController, HomeStates>(
      listener: (_, controller){},

      builder: (context, state){
        final controller = context.read<HomeController>();
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.amber,
            title: const Text(
              Strings.appName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
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

                TextField(
                  decoration: const InputDecoration(labelText: Strings.km),
                  onChanged: controller.setKm,
                ),
                const SizedBox(height: 8.0),

                TextField(
                  decoration: const InputDecoration(labelText: Strings.minutos),
                  onChanged: controller.setMinutos,
                ),
                const SizedBox(height: 24.0),
                
                ElevatedButton(
                  child: const Text(Strings.calcularValor),
                  onPressed: controller.calcularValor,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  ),
                ),
                if(state.valorCorrida !=null)
                AlertDialog(
                  content: Text('O valor da sua corrida custou R\$ ${state.valorCorrida}'),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}