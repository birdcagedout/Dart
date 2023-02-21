// 함수는 1급객체이므로 변수에 넣을 수 있다.
// 모든 함수는 Function클래스의 subclass이다.
// 따라서 특정한 signature를 가진 함수 타입을 선언하고 ==> 그 타입으로 변수를 선언하면 ==> 동일한 signature를 가진 함수를 변수에 담을 수 있다.

void main() {
  Operation op;

  // 간단한 예제
  op = add;
  print(op(4, 2, 1)); // 7

  op = sub;
  print(op(4, 2, 1)); // 1

  // 응용한 예제
  int result1 = calculate(40, 20, 10, add);
  print(result1); // 70

  int result2 = calculate(40, 20, 10, sub);
  print(result2); // 10
}

typedef Operation = int Function(int x, int y, int z); // 특정 signature(int형 파라미터 3개, int형 리턴타입)를 가진 함수를 넣을 수 있는 Operation이라는 type을 정의

// 더하기
int add(int x, int y, int z) => x + y + z;

// 빼기
int sub(int x, int y, int z) => x - y - z;

// 만능 계산 함수
int calculate(int x, int y, int z, Operation op) {
  return op(x, y, z);
}
