import 'dart:io';

bool checkFibonacci(int n) {
  int a = 0;
  int b = 1;
  if (n == a || n == b) return true;
  int c = a + b;
  while (c <= n) {
    if (c == n) return true;
    a = b;
    b = c;
    c = a + b;
  }
  return false;
}

void main() {
  int n;

  print("Qual número deseja verificar se está na sequencia fibonacci?");
  String? input = stdin.readLineSync();

  try {
    n = int.parse(input!);
  } on FormatException {
    print("Isso não é um numero");
    return;
  }

  print(checkFibonacci(n));
}
