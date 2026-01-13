// import 'package:belajar_bloc/pages/card_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:belajar_bloc/pages/calculator_page.dart';
import 'package:belajar_bloc/bloc/calculator_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalculatorBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Belajar BLoC',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CalculatorPage(),
      ),
    );
  }
}
