import 'dart:io';

void main(List<String> args) {
  int a, b, c;
  stdout.write('Masukkan nilai a: ');
  a = int.parse(stdin.readLineSync() ??
      '0'); // Gunakan nilai default '0' jika input kosong
  stdout.write('Masukkan nilai b: ');
  b = int.parse(stdin.readLineSync() ??
      '0'); // Gunakan nilai default '0' jika input kosong
  try {
    if (b == 0) {
      throw IntegerDivisionByZeroException(); // Lempar eksepsi jika pembagian dengan nol
    }
    c = a ~/ b;
    print('$a ~/ $b = $c');
  } on IntegerDivisionByZeroException catch (exception, stackTrace) {
    print('SALAH: terjadi pembagian dengan nilai nol.');
    print('Jenis eksepsi: $exception');
    print('Stacktrace: $stackTrace');
  }
}
