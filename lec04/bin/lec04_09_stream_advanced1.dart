// 지금까지는 Stream 객체를 하나 생성해서 단순히 Listener를 붙여봤지만
// 실전에서는 Stream 객체를 함수를 통해 구현한다.

// 즉, 함수 내에서 Stream이 발생하는 "특정한 Stream 소스"(ex. HTML DOM, 파일 등)를 가지고 있고,
// 그 Stream 소스에서 값이나 event가 발생할 때마다 함수가 Stream값을 반환하는 형태로 사용한다.

// 이때 Stream 객체를 반환하는 함수의 특별한 점
//    ==> 값 반환할 때: 일반 함수는 return하면 종료되므로, 함수가 Stream객체를 반환하는 경우 yield로 값을 반환하고
//    ==> 반환 값을 받을 때: 반환 값도 계속 이어지는 Stream객체라서, 일반 함수처럼 return받는 것이 아니고, Listener를 생성해서 값을 계속 읽어온다.
//    ==> 함수 선언에 async*로 선언

import 'dart:async';

void main() {
  calc(10).listen((event) {
    print("calc(10): $event");
  });
}

// 일반 함수(Stream을 반환하지 않는) ==> 단 1개의 값(0 * num)만 반환하고 종료된다
int? calc_int(int num) {
  for (var i = 0; i < 10; i++) {
    return i * num;
  }
}

// Future를 반환하는 경우(Stream을 반환하지 않는) ==> 단 1개의 값만 반환되고 종료된다
Future<int?> calc_future(int num) async {
  for (var i = 0; i < 10; i++) {
    return i * num;
  }
}

// Stream 함수
// 반환타입: Stream<int>
// 함수바디 직전: async*
// 반환시: return 대신 yield
Stream<int> calc(int num) async* {
  for (var i = 0; i < 10; i++) {
    yield i * num;
  }
}
