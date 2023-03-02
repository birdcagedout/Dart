void main() {
  // Future: 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  print("-------------함수 시작-------------");

  // 서버에 요청
  addNumbers(1, 1);

  // 서버에 요청
  addNumbers(2, 2);
}

void addNumbers(int num1, int num2) {
  print('계산 시작: $num1 + $num2');

  // 서버 요청 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
    print("계산 완료: $num1 + $num2 = ${num1 + num2}");
  });

  // 함수 끝
  print("함수 완료");
}
