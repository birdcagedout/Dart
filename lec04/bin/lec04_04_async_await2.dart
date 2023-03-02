// 만약 main 함수의 addNumbers() 함수 2개의 실행 자체도 순차로 만들고 싶으면
// ==> 1) main에도 async 넣어주고
// ==> 2) addNumbers 앞에 await 써주고
// ==> 3) addNumbers의 정의에서 리턴형을 Future<void>로 고쳐준다 <== await는 "리턴형이 Future인 함수" 앞에만 사용 가능

void main() async {
  // Future: 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  print("-------------함수 시작-------------");

  // 서버에 요청
  await addNumbers(1, 1);

  // 서버에 요청
  await addNumbers(2, 2);
}

// 리턴형을 void -> Future<void>로
Future<void> addNumbers(int num1, int num2) async {
  // 1) 시작
  print('함수 시작: $num1 + $num2');

  // 2) 서버 요청 시뮬레이션: 기다림
  await Future.delayed(Duration(seconds: 2), () {
    print("계산 완료: $num1 + $num2 = ${num1 + num2}");
  });

  // 3) 함수 끝
  print("함수 완료: $num1 + $num2");
}
