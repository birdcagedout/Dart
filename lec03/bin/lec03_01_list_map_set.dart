// 함수형 프로그래밍: 형변환이 핵심
// Collection 타입 상호간 변환: List, Map, Set

void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];
  print(blackPink);
  print(blackPink.asMap()); // {0: 로제, 1: 지수, 2: 리사, 3: 제니}
  print(blackPink.toSet()); // {로제, 지수, 리사, 제니}

  Map blackPinkMap = blackPink.asMap();
  print(blackPinkMap.keys); // _ListIndicesIterable형 Iterable객체: (0, 1, 2, 3)
  print(blackPinkMap.values); // SubListIterable<String>형 Iterable객체: (로제, 지수, 리사, 제니)

  // Iterable 객체는 보통  List형태로 변환해서 사용한다
  print(blackPinkMap.keys.toList()); // [0, 1, 2, 3]
  print(blackPinkMap.values.toList()); // [로제, 지수, 리사, 제니]

  // List로부터 Set 만들기
  Set blackPinkSet = Set.from(blackPink);
  print(blackPinkSet.toList()); // [로제, 지수, 리사, 제니]
}
