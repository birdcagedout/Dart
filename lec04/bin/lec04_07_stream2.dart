// 여러번 리슨하고 싶을 때
// 1. 브로드캐스트스트림 받아온다: stream.asBroadcastStream()
// 2. 리스너 붙인다

// stream을 사용하기 위한 패키지
import 'dart:async';

void main() {
  // 브로드캐스트 스트림으로 받아옴
  final controller = StreamController();
  final bcstream = controller.stream.asBroadcastStream();

  // 스트림에 리스너 붙임(파라미터는 값이 들어오면 실행되는 함수)
  final streamListener1 = bcstream.listen((event) {
    print("Listener1: $event");
  });

  final streamListener2 = bcstream.listen((event) {
    print("Listener2: $event");
  });

  // Listener에 값 전달
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.add("ABC");
}
