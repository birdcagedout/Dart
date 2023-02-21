// 함수: 리턴타입(권고사항) 함수이름() {}


void main() {
  // 1번 함수 : positional parameter
  print(addNum1(1, 2, 3)); // 6
  //print(addNum1(x:1, y:2, z:3))   // 에러: named parameter is not defined ==> 이렇게는 못 쓴다

  // 2-1번 함수 : optional parameter + 기본값
  print(addNum2_1(1, 3)); // 4

  // 2-2번 함수 : optional parameter + null처리
  print(addNum2_2(3, 5)); // 8

  // 3-1번 함수 : named parameter
  print(addNum3_1(x: 3, z: 5, y: 7)); // 15 ==> 순서 상관없다

  // 3-2번 함수 : named parameter + optional parameter(z는 생략 가능)
  print(addNum3_2(x: 3, y: 7)); // 10

  // 3-2번 함수 : named parameter + optional parameter
  //print(addNum3_2(x: 3, y: 7, 10));   // 에러: 중괄호 안에 있는 parameter들은 named이기 때문에 ==> z를 쓰지 않을 수는 있으나, 쓰려면 반드시 parameter이름을 써주어야 한다.

  // 3-2번 함수 : named parameter + optional parameter
  print(addNum3_2(x: 3, z: 10, y: 7)); // 20 ==> 쓰려면 반드시 parameter이름 z를 써주어야 한다.

  // 3-3번 함수 : positional parameter + named parameter
  print(addNum3_3(3, z: 10, y: 7)); // 20 ==> 쓰려면 반드시 이름없는 x를 먼저 넣어주어야 한다.

  // 3-3번 함수 : positional parameter + named parameter
  //print(addNum3_3(x:3, z: 10, y: 7)); // x는 named가 아니므로 이렇게 쓸 수는 없다.
}

// parameter(=argument)는 3가지가 있다.

// 1. positional parameter: 호출시 순서대로 x, y, z가 정해질 뿐 바꿀 수 없다
addNum1(int x, int y, int z) {
  int sum = x + y + z;
  return sum;
}

// 2. optional parameter: 없어도 되는 parameter ==> 대괄호로 묶어준다.
// 이때 대괄호 내부 변수(아래의 경우 z)가 없이 호출되는 경우 z=null이 되기 때문에 에러가 생긴다.

// 해결방법1. 기본값을 넣어준다
addNum2_1(int x, int y, [int z = 0]) {
  int sum = x + y + z;
  return sum;
}

// 해결방법2. type을 nullable(int?)로 선언
addNum2_2(int x, int y, [int? z]) {
  z ??= 0; // null이면 0
  int sum = x + y + z;
  return sum;
}

// 3-1. named parameter: 호출시 parameter에 이름을 붙여서 call하기 때문에 순서에 무관 ==> 중괄호!! + required(있으면 호출시 필수, 없으면 optional parameter가 됨)
// 호출시에 반드시 "parameter이름 : 값" 형식으로 호출해야 한다. (x:1, y:2, z:3)
addNum3_1({
  // 중괄호
  required int x, // required가 있으면 named positional parameter가 된다. 호출시 꼭 x는 있어야 하고, 반드시 "x: 값" 형식으로만 호출해야 한다.
  required int y,
  required int z,
}) {
  int sum = x + y + z;
  return sum;
}

// 3-2. named parameter + optional parameter: 중괄호 안에 required를 빼면 optional parameter가 된다.(즉, 생략할 수 있다.)
addNum3_2({
  // 중괄호
  required int x,
  required int y,
  int? z, // required가 없으므로 optional parameter가 된다. 호출시 z는 없어도 되지만(required가 없으므로), 만약 있다면 반드시 "z: 값" 형식으로만 호출해야 한다.(named이므로)
}) {
  z ??= 0;
  int sum = x + y + z;
  return sum;
}


// 3-3. positional parameter + named parameter: 먼저 positional parameter 선언하고, 중괄호 안에 named parameter를 선언한다. 
addNum3_3(int x, {
  required int y,
  required int z
}) {
  int sum = x + y + z;
  return sum;
}
