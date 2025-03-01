import 'dart:io';

void main() {
  final meses = {
    1: 'Janeiro', 2: 'Fevereiro', 3: 'Março', 4: 'Abril',
    5: 'Maio', 6: 'Junho', 7: 'Julho', 8: 'Agosto',
    9: 'Setembro', 10: 'Outubro', 11: 'Novembro', 12: 'Dezembro'
  };

  while (true) {
    print('Digite um número de 1 a 12 (ou "sair"):');
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'sair') {
      print('Programa encerrado.');
      break;
    }

    int? numero = int.tryParse(input);
    if (numero == null || !meses.containsKey(numero)) {
      print('Entrada inválida.');
      continue;
    }

    print(meses[numero]);
  }
}