import 'dart:io';

void main() {
  print("Введите сумму дохода: ");
  double d = double.parse(stdin.readLineSync()!);

  double nalog;
  if (d <= 10000) {
    nalog = 0.0;
  } else if (d <= 50000) {
    nalog = 0.10;
  } else {
    nalog = 0.12;
  }

  double summaNaloga = d * nalog;

  print("Сумма налога: $summaNaloga");

  print("Введите первое число: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Введите второе число: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Введите оператор (+, -, *, /): ");
  String operator = stdin.readLineSync()!;

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Ошибка: деление на ноль!");
        return;
      }
      break;
    default:
      print("Ошибка: неверный оператор!");
      return;
  }

  print("Результат: $result");

  print("Введите  файл  'txt' 'jpg' 'pdf' ");
  String file = stdin.readLineSync()!.toLowerCase();

  String file1;

  switch (file) {
    case 'txt':
      file1 = "Текстовый файл";
      break;
    case ' file jpg':
    case 'file jpeg':
    case ' file png':
      file1 = "Изображение";
      break;
    case 'pdf':
      file1 = "Документ PDF";
      break;
    default:
      file1 = "Неизвестный тип файла";
      break;
  }

  print("Тип файла: $file1");
}
