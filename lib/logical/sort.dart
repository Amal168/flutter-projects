import 'dart:io';

void main() {
  List<String> list = [];
  print("enter elements");
  int len = list.length;
  for (int i = 0; i < len; i++) {
    stdin.readByteSync();
  }
  for (String element in list) {
    print(list);
  }
}
