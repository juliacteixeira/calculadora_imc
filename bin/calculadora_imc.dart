import 'dart:io';

import 'package:calculadora_imc/classes/Pessoa.dart';

void main(List<String> arguments) {
  print('Digite seu nome:');
  String? nome = stdin.readLineSync();
  print('Digite seu peso (em kg):');
  double peso = double.parse(stdin.readLineSync() ?? '0');
  print('Digite sua altura (em metros):');
  double altura = double.parse(stdin.readLineSync() ?? '0');

  Pessoa pessoa = Pessoa(nome!, peso, altura);
  double imc = pessoa.calcularIMC();

  print('$nome, seu IMC é ${imc.toStringAsFixed(2)}');
}
