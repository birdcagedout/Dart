// await: async 로직을 순차적으로 실행되도록 하기 위해 기다림
// await가 들어가는 함수에는 파라미터()와 바디{} 사이에 반드시 async를 넣어야 await 사용 가능
// await는 "리턴형이 Future인 함수" 앞에만 사용 가능

// async 함수에 await를 넣어서 순차 실행되게 만들면 ==> 동기 프로그래밍과 뭐가 다름?
// ==> 1) async 함수 자체는 즉각 리턴됨(main 함수의 다른 로직 실행 가능)
// ==> 2) 그러면서도 async 함수 내부만큼은 순차 실행되어 예측성, 가독성이 높아짐

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

// async 써야 await 사용 가능
// await 사용시: 1) -> 2) -> 3) 순서대로 실행됨
void addNumbers(int num1, int num2) async {
  // 1) 시작
  print('함수 시작: $num1 + $num2');

  // 2) 서버 요청 시뮬레이션: 기다림
  await Future.delayed(Duration(seconds: 2), () {
    print("계산 완료: $num1 + $num2 = ${num1 + num2}");
  });

  // 3) 함수 끝
  print("함수 완료: $num1 + $num2");
}
