// spread operator: provide a concise way to insert multiple values into a collection.
// 1) ...컬렉션변수 : collection 변수 자체를 이용하여 ==> 그 collection에 들어있는 "요소"들을 다른 컬렉션에 펼쳐서 넣는 방법
// 2) ...?컬렉션변수 : collection 변수 자체가 null일 경우 Exception 발생을 방지한다.

void main() {
  List<int> even = [0, 2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7, 9];
  List<int>? nullList1; // List 자체가 null인 경우
  List<int?> nullList2 = [null, 10, 20, 30]; // List의 요소가 null인 경우

  // 1. spread operator: ...

  // spread operator를 사용하지 않은 경우
  print([even, odd]); // [[0, 2, 4, 6, 8], [1, 3, 5, 7, 9]]

  // spread operator를 사용한 경우
  print([...even, ...odd]); // [0, 2, 4, 6, 8, 1, 3, 5, 7, 9]

  // spread op를 사용한 경우 새로운 collection객체가 만들어진다
  var even2 = [...even];
  print(even); // [0, 2, 4, 6, 8]
  print(even2); // [0, 2, 4, 6, 8]
  print(even == even2); // false: 요소가 똑같아도 ==> spread op를 사용하면 새로운 객체가 생성되므로 서로 다른 객체임

  // 2. null-aware spread operator: ...?
  print('-----------------------------------------------------------');

  // 1) List 자체가 null인 경우 ==> null-aware op가 필요한 경우
  print(nullList1); // null
  print([0, 1, 2, ...?nullList1]); // [0, 1, 2]

  // 2) List 요소에 null이 포함된 경우 ==> null-aware op가 필요한 경우는 아니다
  print(nullList2); // [null, 10, 20, 30]
  print([0, 1, 2, ...nullList2]); // [0, 1, 2, null, 10, 20, 30]
  print([0, 1, 2, ...?nullList2]); // [0, 1, 2, null, 10, 20, 30]   // the null-aware operator '...?' is unnecessary.
}
