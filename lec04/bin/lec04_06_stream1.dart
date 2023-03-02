// stream을 사용하기 위한 패키지
import 'dart:async';

void main() {
  // 컨트롤러에서 스트림 얻어옴
  final controller = StreamController();
  final stream = controller.stream;

  // 스트림에 리스너 붙임(파라미터는 값이 들어오면 실행되는 함수)
  final streamListener1 = stream.listen((event) {
    print("Listener1: $event");
  });

  // Listener에 값 전달
  controller.sink.add(1);
  controller.sink.add("ABC");
}
