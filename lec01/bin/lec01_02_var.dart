// import 'package:lec01/lec01.dart' as lec01;

void main() {
  // var는 런타임에 타입추론됨(r-value에 따라)
  // A way to declare a variable without specifying its type. The type of this variable is determined by its initial value
  var name = '코드팩토리';
  print(name);

  name = '플러터 프로그래밍';
  print(name);

  // var name = '코드팩토리2';    // 에러: 같은 스코프 안에서 같은 변수 재선언 안됨
  // name = 1; // 에러: A value of type 'int' can't be assigned to a bairable of type 'String'

  // name의 실제 런타임 타입 확인
  print(name.runtimeType); // String

  //================= 고급: 나중에 공부할 부분
  // var로 선언만 해도 OK: 초기화값에 의해 타입 결정
  var test;
  test = 0.1;
  print(test.runtimeType); // double
  test = -1;
  print(test.runtimeType); // int
}
