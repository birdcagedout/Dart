void main() {
  // nullable: null값을 가질 수 있는 type
  // non-nullable: null값을 가질 수 없는 type

  String name = '코드팩토리';
  //name = null; // 에러: String은 non-nullable이다

  String? name2 = '블랙핑크';
  name2 = null; // OK

  // null이 아님을 확신할 수 있는 경우 ! 연산자 붙임
  String? name3 = "블랙핑크";
  print(name3!); // Warning: Operand of null-aware operation '!' has type 'String' which excludes null.

  name3 = null;
  print(name3!);  // null
}
