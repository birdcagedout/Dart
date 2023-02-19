// The special, required, top-level function where app execution starts
void main() {
  // 정수
  int num1 = 2;
  int num2 = -2;
  print(num1 + num2);
  print(num1 / num2); // 결과값 = -1.0(double)

  // 실수
  double d1 = 2.5;
  double d2 = 0.5;
  print(d1 + d2); // 3.0
  print(d1 / d2); // 5.0

  // 불리언
  bool b1 = true;
  bool b2 = false;
  // print(b1, b2);  // Too many positional arguments
  print(b1); // true

  // String ==> 주의: 대문자 S임 (class이름이므로)
  String str1 = '레드벨벳';
  String str2 = '코드팩토리';
  print(str1 + str2);
}
