// 단일 Future객체를 반환하는 async 함수처럼 async* 함수를 사용하기 II.
// ==> async* 함수 내에서 Future.delayed() 호출한다

// 이 경우에도 비동기 함수로 동작한다는 사실을 확인하기 위해
// main() 내에서 calc를 2개 호출해본다.

// (1) 첫번째 calc()에서 await를 만나면 ==> 첫번째 calc()는 바로 리턴된 후 main()내에서 두번째 calc()가 실행된다
// (2) 두번째 calc()에서 await를 만나면 ==> 두번째 calc()는 바로 리턴된다. ==> 이때 더이상 실행할 것이 남아있지 않아도 프로그램은 종료되지 않는다
// (3) 잠시 후 첫번째 calc에서 await가 끝나면 for-loop를 다시 돌고 단일 Future<int>를 반환 후 ==> await를 만나서 (1)로 반복된다.

import 'dart:async';

void main() {
  // 첫번째 비동기 calc()
  calc(10).listen((event) {
    print("calc(10): $event");
  });

  // 두번째 비동기 calc()
  calc(1000).listen((event) {
    print("calc(1000): $event");
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
