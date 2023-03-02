// await로 기다린 함수의 Future객체 리턴값 받기

void main() async {
  // Future: 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  print("-------------함수 시작-------------");

  // 서버에 요청
  final result1 = await addNumbers(1, 1);

  // 서버에 요청
  final result2 = await addNumbers(2, 2);

  print(result1.runtimeType);

  print("result: $result1 + $result2  = ${result1 + result2}");
}

// 리턴형을 void -> Future<void>로
Future<int> addNumbers(int num1, int num2) async {
  // 1) 시작
  print('함수 시작: $num1 + $num2');

  // 2) 서버 요청 시뮬레이션: 기다림
  await Future.delayed(Duration(seconds: 2), () {
    print("계산 완료: $num1 + $num2 = ${num1 + num2}");
  });

  // 3) 함수 끝
  print("함수 완료: $num1 + $num2");

  // 자동으로 Future객체로 wrapping해서 Future<int> 객체가 리턴된다
  return num1 + num2;
}
