import 'dart:io';

void main() {
  String s;
  bool flag = false;
  print("\nEnter a string:");
  s = stdin.readLineSync()!;
  int len = s.length;
  for (int i = 0; i < len; i++) {
    if (s.indexOf(s[i]) == s.lastIndexOf(s[i])) {
      flag = true;
      print("$i");
      exit(0);
    }
  }
  if (!flag) {
    print("-1");
  }
}