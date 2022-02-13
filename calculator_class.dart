import 'dart:math' as math;

abstract class Calculator {
  final double sayi1;
  final double sayi2;

  Calculator(this.sayi1, this.sayi2);

  double toplama();
  double cikarma();
  double carpma();
  double bolme();
  double modAlma();
  num usAlma();
  double karekokAlma();
}

class Islem extends Calculator {
  Islem(double sayi1, double sayi2) : super(sayi1, sayi2);

  @override
  double toplama() {
    return sayi1 + sayi2;
  }

  @override
  double cikarma() {
    return sayi1 - sayi2;
  }

  @override
  double carpma() {
    return sayi1 * sayi2;
  }

  @override
  double bolme() {
    return sayi1 / sayi2;
  }

  @override
  double modAlma() {
    return sayi1 % sayi2;
  }

  @override
  num usAlma() {
    return math.pow(sayi1, sayi2);
  }

  @override
  double karekokAlma() {
    return math.sqrt(sayi1);
  }
}
