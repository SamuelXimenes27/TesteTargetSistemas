import 'dart:io';

String reversedString(String str) {
  String temp = "";

  for (int i = str.length - 1; i >= 0; i--) {
    temp += str[i];
  }

  return temp;
}

void main() {
  String? str;

  print("Digite alguma coisa para ser invertida");
  String? input = stdin.readLineSync();

  str = input;

  print(reversedString(str!));
}
