import 'dart:io';

void main() {
  List nums = [];
  List nom = [];
  print("enter the number of elements");
  int n = int.parse(stdin.readLineSync()!);
  print("enter the  elements");
  for (int i = 0; i < n; i++) {
    nums.add(int.parse(stdin.readLineSync()!));
  }
  for (int i = 0; i < nums.last; i++) {
    if (!nums.contains(i)) {
      nom.add(i);
    }
  }
  print(nom);
}
