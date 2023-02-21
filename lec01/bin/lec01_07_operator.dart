void main() {
  // 몫, 나머지 연산자
  int a = 11;
  int q = a ~/ 5;
  int r = a % 5;
  print("몫은 ${q}, 나머지는 ${r}");

  // 단항 연산자
  int num = 102;
  print(num++); // 102 출력 후 103
  print(--num); // 102 된 후 출력

  // 이항 연산자
  double d1 = 4.0;
  d1 += 1; // double과 int 연산: OK
  print(d1); // 5.0

  double d2 = 5.0;
  d2 *= 2;
  print(d2); // 10.0

  double d3 = 5.0;
  d3 /= 2;
  print(d3); // 2.5

  int i1 = 5;
  //i1 /= 2;    // 에러: double값이 int변수에 할당될 수 없다
  print(i1);

  // null일 때
  double? d4 = null;
  print(d4); // null

  // null-aware operators (1) ??
  // x = y ?? z;    ==> y가 null 아니면 x에 y값 할당 / y가 null이면 x에 z값 할당
  double d5 = d4 ?? 10;
  print(d5);

  // null-aware operators (2) ??=
  // A ??= B;    ==> A가 null일 때만 B값을 A에 할당 (A가 null이 아니면 A값 유지)
  double? d6;
  d6 ??= 100;
  print(d6);

  double? d7;
  print(d7 ??= 100); // 식 자체가 d7에 할당된 값을 리턴

  // bool
  bool b1 = 12 > 10 && 1 > 0;
  print(b1);
  bool b2 = 12 > 10 && 0 > 1;
  print(b2);
  bool b3 = 12 > 10 || 0 > 1;
  print(b3);

  print("----------------------------");

  // type test 연산자: is, is!
  int n1 = 1;
  print(n1 is int); // true
  print(n1 is! String); // true
  print(n1 is Object); // true
}
