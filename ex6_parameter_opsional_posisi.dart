void printString(String s, [int n = 1]) {
  n ??=
      1; // Gunakan null-aware operator untuk memberikan nilai default jika n null
  for (int i = 0; i < n; i++) {
    print('${i + 1}. $s');
  }
}

void main(List<String> args) {
  print('Satu Argumen');
  printString('Teknik Informatika');
  print('\nDua Argumen');
  printString('Rekayasa Perangkat Lunak', 3);
}
