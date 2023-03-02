// cascade notation
// .. : 직전 함수에서 리턴된 객체에 연속적인 연산/함수를 적용 가능
// ?..: null-safe한 경우 사용
// 마지막에만 ; 붙임

void main() {
  var paint = Paint() // 주의==> ;없음
    ..color = "black" // 주의==> ;없음
    ..strokeCap = "round" // 주의==> ;없음
    ..strokeWidth = 5.0; // 주의==> ; 있음

  print(paint);
}

// Paint 정의
class Paint {
  String color = "";
  String strokeCap = "";
  double strokeWidth = 0.0;

  @override
  String toString() {
    return "Paint(color: $color, strokeCap: $strokeCap, strokeWidth: $strokeWidth)";
  }
}
