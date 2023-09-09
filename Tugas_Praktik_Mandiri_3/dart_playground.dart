import 'dart:io';

void main(List<String> args) {
  stdout.write('Pilih Menu : \n'
      '1. Soal 1\n'
      '2. Soal 2\n'
      '3. Soal 3\n\n');
  var input = stdin.readLineSync() ?? '';
  menu(input);
}

// Soal 1
String grades(String nilai) {
  int grade = int.tryParse(nilai) ?? 0;

  if (grade > 70) {
    return 'Niai A';
  } else if (grade > 40) {
    return 'Nilai B';
  } else if (grade > 0) {
    return 'Nilai C';
  } else {
    return '';
  }
}

void looping() {
  print('\n');
  for (var i = 1; i <= 10; i++) {
    print(i);
  }
}

Future<List<int>> listLoop(String inputList, String inputPengali) async {
  List<int> result = [];

  List<int> list =
      inputList.split(',').map((String value) => int.parse(value)).toList();
  var pengali = int.tryParse(inputPengali) ?? 1;

  for (int element in list) {
    int product = await multiplyAsync(element, pengali);
    result.add(product);
  }

  print('\nstart list: $list');
  print('pengali: $inputPengali');
  print('result: $result');
  return result;
}

Future<int> multiplyAsync(int value, int multiplier) async {
  // Simulasi operasi yang membutuhkan waktu
  await Future.delayed(
    Duration(seconds: 1),
    () {
      print('Calculating...');
    },
  );

  // Melakukan perkalian secara asynchronous
  return value * multiplier;
}

void menu(String value) {
  switch (value) {
    case '1':
      stdout.write('input nilai (contoh: 50) :');
      var input = stdin.readLineSync() ?? '';
      var a = grades(input);
      print(a);
      break;
    case '2':
      looping();
      break;
    case '3':
      stdout.write('Input List (contoh : 2,5,3) : ');
      var inputList = stdin.readLineSync() ?? '';

      stdout.write('Input Pengali (contoh : 2) : ');
      var inputPengali = stdin.readLineSync() ?? '';

      listLoop(inputList, inputPengali);
      break;
  }
}
