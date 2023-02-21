void main() {
  // 1. final: 변수의 값을 변경할 수 없다
  final String name = '코드팩토리';
  //name = "블랙핑크";    // 에러: 변경 불가능

  final String name2;
  name2 = "블랙핑크"; // 선언 후 나중에 값 할당 OK
  //name2 = "블랙라벨";     // 에러: 변경은 불가능

  // 2. const: 상수 선언
  const String member = "리사";
  //member = "지수";        // 에러: 변경 불가능

  //const String member2;     // 선언과 동시에 초기화해야 함
  //member2 = "리사";         // 선언 후 값 할당 X

  // 3. final, const 공통점: type을 생략할 수 있다(var를 쓴 것과 같은 효과)
  final name3 = "코드팩토리";
  const member3 = "리사";

  // 4. final, const 차이점:
  // final: build time에 특정 값으로 fix되지 않아도 된다.(runtime에 특정되어도 OK)
  // const: build time에 특정 값으로 fix되어야 한다.
  final DateTime now1 = DateTime.now(); // OK: now() 실행시점에 fix되어도 됨
  //const DateTime now2 = DateTime.now(); // 에러: build time에 fix되어야 함
}
