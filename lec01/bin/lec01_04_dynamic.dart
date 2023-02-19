void main() {
  // 변수선언 방법 dynamic: var와 비슷
  dynamic name = '코드팩토리';
  print(name);

  var name2 = '뉴진스';
  print(name2);

  dynamic num = 1;
  print(num);

  var num2 = -1;
  print(num2);

  // dynamic과 var의 차이점: dynamic은 다른 타입의 값을 재할당할 수 있다
  name = 1;
  // name2 = -1; // 에러: String변수에 int값 못 넣음

  num = true;
  // num2 = 5.5; // 에러: int변수에 double값 못 넣음
}
