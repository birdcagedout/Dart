// "map 함수" 사용법3(변수 타입 Map과 다르다!!)
// Set에 map함수 적용

void main() {
  Set blackPinkSet = {'로제', '지수', '제니', '리사'};

  final newBlackPinkSet = blackPinkSet.map((e) => '블랙핑크 $e').toSet();
  print(newBlackPinkSet);
}
