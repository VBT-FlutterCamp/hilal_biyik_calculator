import 'dart:io';
import 'calculator_class.dart';

void main() {
  print("---" * 5);
  print("HESAP MAKİNESİ ");
  print("---" * 5);

  print("Lütfen işlem yapmak istediğiniz Birinci sayıyı giriniz:");
  final double sayi1 = double.parse(stdin.readLineSync() ?? "0");

  print("Lütfen işlem yapmak istediğiniz İkinci sayıyı giriniz:");
  final double sayi2 = double.parse(stdin.readLineSync() ?? "0");

  print("\nLütfen yapmak istediğiniz İşlemi seçiniz:\n");
  print("Toplama işlemi için      : + tuşuna tıklayınız.");
  print("Çıkarma işlemi için      : - tuşuna tıklayınız.");
  print("Çarpma işlemi için       : * tuşuna tıklayınız.");
  print("Bölme işlemi için        : / tuşuna tıklayınız.");
  print("Mod Alma işlemi için     : % tuşuna tıklayınız.");
  print("Üs Alma işlemi için      : ^ tuşuna tıklayınız.");
  print("Karekök Alma işlemi için : // tuşuna tıklayınız.");
  print("Seçtiğiniz işlem:");

  String islem = stdin.readLineSync()!;
  final Islem hesapla = Islem(sayi1, sayi2);

  switch (islem) {
    case "+":
      print("$sayi1 + $sayi2 = ${hesapla.toplama()}");
      break;

    case "-":
      print("$sayi1 - $sayi2 = ${hesapla.cikarma()}");
      break;

    case "*":
      print("$sayi1 * $sayi2 = ${hesapla.carpma()}");
      break;

    case "/":
      print("$sayi1 / $sayi2 = ${hesapla.bolme()}");
      break;

    case "%":
      print("$sayi1 % $sayi2 = ${hesapla.modAlma()}");
      break;

    case "^":
      print("$sayi1 ^ $sayi2 = ${hesapla.usAlma}");
      break;

    case "//":
      print("$sayi1  // karekökü  = ${hesapla.karekokAlma()}");
      break;

    default:
      print("Geçersiz İşlem Girdiniz.");
  }
}
