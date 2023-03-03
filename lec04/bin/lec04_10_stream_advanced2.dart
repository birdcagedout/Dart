// 단일 Future객체를 반환하는 async 함수처럼 async* 함수를 사용하기 I.
// async* 함수 내에서 Future.delayed()를 await함으로써 ==> 값을 1개씩 순차적으로 yield하면 된다.

import 'dart:async';

void main() {
  calc(10).listen((event) {
    print("calc(10): $event");
  });
}

// Stream 함수(async* 함수)
Stream<int> calc(int num) async* {
  for (var i = 0; i < 10; i++) {
    yield i * num;

    // 이 부분을 추가한다 ==> async* 함수이지만, 마치 async 함수에서 Future<int> 단일 객체를 반환하는 것처럼 사용할 수 있다!!
    await Future.delayed(Duration(seconds: 1));
  }
}
