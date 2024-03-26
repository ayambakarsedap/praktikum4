import 'dart:io';

void main(List<String> args) {
  int a, b, c;
  stdout.write('Masukkan nilai a: ');
  a = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan nilai b: ');
  b = int.parse(stdin.readLineSync()!);
  if (b == 0) {
    print('Error: Nilai b tidak boleh nol.');
    return;
  }
  c = a ~/ b;
  print('$a ~/ $b = $c');
}
