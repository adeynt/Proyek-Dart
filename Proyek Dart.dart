import 'dart:io';

void main() {
  stdout.write("Masukkan suhu: ");
  double suhu = double.parse(stdin.readLineSync()!);

  stdout.write(
    "\nPilih konversi:\n"
    "[1] Celcius ke Fahrenheit\n"
    "[2] Celcius ke Kelvin\n"
    "[3] Fahrenheit ke Kelvin\n"
    "[4] Fahrenheit ke Celcius\n"
    "[5] Kelvin ke Fahrenheit\n"
    "[6] Kelvin ke Celcius\n"
    "Pilih: "
  );

  int pilihan = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      double hasil = CtoF(suhu);
      print("\nHasil konversi dari $suhu°C ke Fahrenheit: $hasil°F");
      break;

    case 2:
      double hasil = CtoK(suhu);
      print("\nHasil konversi dari $suhu°C ke Kelvin: $hasil K");
      break;

    case 3:
      double hasil = FtoK(suhu);
      print("\nHasil konversi dari $suhu°F ke Kelvin: $hasil K");
      break;

    case 4:
      double hasil = FtoC(suhu);
      print("\nHasil konversi dari $suhu°F ke Celcius: $hasil°C");
      break;

    case 5:
      double hasil = KtoF(suhu);
      print("\nHasil konversi dari $suhu K ke Fahrenheit: $hasil°F");
      break;

    case 6:
      double hasil = KtoC(suhu);
      print("\nHasil konversi dari $suhu K ke Celcius: $hasil°C");
      break;

    default:
      print("\nPilihan tidak valid!");
  }
}

double CtoF(double suhu) {
  return (suhu * 9 / 5) + 32;
}

double CtoK(double suhu) {
  return suhu + 273.15;
}

double FtoK(double suhu) {
  return (suhu - 32) * (5 / 9) + 273.15;
}

double FtoC(double suhu) {
  return (suhu - 32) * (5 / 9);
}

double KtoF(double suhu) {
  return (suhu - 273.15) * (9 / 5) + 32;
}

double KtoC(double suhu) {
  return suhu - 273.15;
}
