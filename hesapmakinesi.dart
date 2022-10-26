import 'dart:io';

double toplama(double num1, double num2) {
  return num1 + num2;
}

double cikarma(double num1, double num2) {
  return num1 - num2;
}

double carpma(double num1, double num2) {
  return num1 * num2;
}

double bolme(double num1, double num2) {
  return num1 / num2;
}

void main(List<String> arguments) {
  var birinci_eleman;
  var ikinci_eleman;
  var dongu = 0;
  var islem;

  while (dongu == 0) {
    try {
      stdout.write("Birinci elemanı giriniz: ");
      birinci_eleman = double.parse(stdin.readLineSync()!);
      dongu == 1;
      break;
    } on Exception {
      stdout.write("Lütfen geçerli bir sayı giriniz.\n");
      dongu == 0;
    }
  }

  var list = ["+", "-", "*", "/"];

  while (dongu == 0) {
    stdout.write("Yapmak istediğiniz işlemi giriniz: ");
    islem = stdin.readLineSync()!;

    if (!list.contains(islem)) {
      stdout.write("Geçerli bir işlem giriniz.\n");
      dongu == 0;
    }
    if (list.contains(islem)) {
      break;
    }
  }

  while (dongu == 0) {
    try {
      stdout.write("İkinci elemanı giriniz: ");
      ikinci_eleman = double.parse(stdin.readLineSync()!);
      dongu == 1;
      break;
    } on Exception {
      stdout.write("Lütfen geçerli bir sayı giriniz.\n");
      dongu == 0;
    }
  }
  
  stdout.write("Sonuç: ");

  switch (islem) {
    case ("+"):
      stdout.write(toplama(birinci_eleman, ikinci_eleman));
      break;

    case ("-"):
      stdout.write(cikarma(birinci_eleman, ikinci_eleman));
      break;

    case ("*"):
      stdout.write(carpma(birinci_eleman, ikinci_eleman));
      break;

    case ("/"):
      stdout.write(bolme(birinci_eleman, ikinci_eleman));
      break;

    default:
      stdout.write("Geçersiz işlem");
      break;
  }
}
