import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/calculator_bloc.dart';
import '../event/calculator_event.dart';
import '../state/calculator_state.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final TextEditingController aController = TextEditingController();
  final TextEditingController bController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kalkulator BLoC')),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: aController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nilai A',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: bController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nilai B',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: Text("+"),
                    onPressed: () {
                      double a = double.tryParse(aController.text) ?? 0;
                      double b = double.tryParse(bController.text) ?? 0;
                      context.read<CalculatorBloc>().add(AddEvent(a, b));
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    child: Text("-"),
                    onPressed: () {
                      double a = double.tryParse(aController.text) ?? 0;
                      double b = double.tryParse(bController.text) ?? 0;
                      context.read<CalculatorBloc>().add(SubtractEvent(a, b));
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    child: Text("x"),
                    onPressed: () {
                      double a = double.tryParse(aController.text) ?? 0;
                      double b = double.tryParse(bController.text) ?? 0;
                      context.read<CalculatorBloc>().add(MultiplyEvent(a, b));
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    child: Text("/"),
                    onPressed: () {
                      double a = double.tryParse(aController.text) ?? 0;
                      double b = double.tryParse(bController.text) ?? 0;
                      context.read<CalculatorBloc>().add(DivideEvent(a, b));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            BlocBuilder<CalculatorBloc, CalculatorState>(
              builder: (context, state) {
                if (state is CalculatorResult) {
                  return Text(
                    'Hasil: ${state.result}',
                    style: const TextStyle(fontSize: 24),
                  );
                }
                return const Text('Hasil', style: TextStyle(fontSize: 24));
              },
            ),
            Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Reset"),
                onPressed: () {
                  aController.clear();
                  bController.clear();
                  context.read<CalculatorBloc>().add(ResetEvent());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
