// 단일 Future객체를 반환하는 async 함수처럼 async* 함수를 사용하기 III.
// main() 내에서 calc를 2개 호출하되, 순차적으로 실행하고 싶다면?
// ==> main에 async 넣고, 각각에 await하면 될까?
// ==> 안 된다!! 이 방법은 단일 Future객체 리턴받는 함수들을 순차적으로 실행시키는 방법이다.
//                         Stream객체를 반환하는 함수들을 순차적으로 실행시키려면 특별한 방법을 사용해야 한다.

// 1) 새로운 Stream함수(총괄 함수) 정의할 것.
// 2) 총괄 Stream함수 내에서 calc()를 순서대로 호출하되,
// 3) 호출 앞에 yield* ==> yield가 단일 Future객체를 반환하는 것과 유사하게, yield*은 모든 Stream이 모두 반환될 때까지 기다렸다가 한방에 반환한다
// 4) main() 내에서 총괄 Stream함수를 호출.

import 'dart:async';

// 이렇게 하면 안 된다!!!
void main() {
  // 총괄 Stream 함수
  playAllStream().listen((event) {
    print(event);
  });
}

// Stream 총괄함수
Stream<int> playAllStream() async* {
  yield* calc(10);    // Stream 전체가 반환될 때까지 기다림
  yield* calc(1000);  // Stream 전체가 반환될 때까지 기다림
}

// Stream 함수(async* 함수)
Stream<int> calc(int num) async* {
  for (var i = 0; i < 10; i++) {
    yield i * num;

    // 이 부분을 추가한다 ==> async* 함수이지만, 마치 async 함수에서 Future<int> 단일 객체를 반환하는 것처럼 사용할 수 있다!!
    await Future.delayed(Duration(seconds: 1));
  }
}
