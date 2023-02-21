// 화살표 함수

void main() {
  // 원래 함수
  print(addNum1(1, 2, 3)); // 6

  // 화살표 함수
  print(addNum2(1, 2, 3)); // 6

  // 더 축약형
  print(addNum3(1, 2, 3)); // 6
}

// 원래 함수
int addNum1(int x, int y, int z) {
  int sum = x + y + z;
  return sum;
}

// 화살표 함수
int addNum2(int x, int y, int z) => x + y + z;

// 화살표 함수2: 익명함수를 addNum3라는 변수에 할당
var addNum3 = (x, y, z) => x + y + z;
