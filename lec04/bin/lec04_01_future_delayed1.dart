void main() {
  // Future: 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  print("-------------함수 시작-------------");

  // 지연
  // 1번 파라미터: Duration(지연 시간)
  // 2번 파라미터: 지연 시간 후 실행할 함수
  Future.delayed(Duration(seconds: 2), () {
    print('Delay 끝');
  });

  // 지연되는 동안 ==> 다른 일 가능
  for (var i = 0; i < 100; i++) {
    print(i);
  }
}
