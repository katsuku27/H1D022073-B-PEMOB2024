import 'dart:collection';

class Fibonacci {
  final HashMap<int, BigInt> _memo = HashMap<int, BigInt>();

  BigInt calculate(int n) {
    // Kasus dasar
    if (n <= 1) return BigInt.from(n);

    // Periksa apakah nilai sudah ada di memo
    if (_memo.containsKey(n)) {
      return _memo[n]!;
    }

    // Hitung nilai Fibonacci
    BigInt result = calculate(n - 1) + calculate(n - 2);

    // Simpan hasil ke memo
    _memo[n] = result;

    return result;
  }

  void printFibonacciSequence(int count) {
    for (int i = 0; i < count; i++) {
      print('Fibonacci($i) = ${calculate(i)}');
    }
  }
}

void main() {
  var fib = Fibonacci();
  print('Fibonacci ke-10: ${fib.calculate(10)}');
  print('Fibonacci ke-50: ${fib.calculate(50)}');
  print('\nDeret Fibonacci (20 angka pertama):');
  fib.printFibonacciSequence(20);
}
