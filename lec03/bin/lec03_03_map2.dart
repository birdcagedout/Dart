// "map 함수" 사용법2(변수 타입 Map과 다르다!!)
// Map에 map함수 적용

void main() {
  Map<String, String> harryPotter = {'Harry Potter': '해리 포터', 'Ron Weasley': '론 위즐리', 'Hermione Granger': '헤르미온느 그레인저'};

  // 1. key, value 둘 다 map함수 적용
  // map함수의 파라미터 함수의 리턴값 = Map의 1개 요소(=MapEntry)
  // map함수 전체의 리턴값 = Map 객체
  final harryPotterMap = harryPotter.map((key, value) => MapEntry('[Harry Potter Character] $key', '[해리포터 캐릭터] $value'));
  print(harryPotterMap);

  // 2. key값만 map함수 적용
  final keysList = harryPotter.keys.map((e) => '[Harry Potter Character] $e').toList();

  // 3. value값만 map함수 적용
  final valuesList = harryPotter.values.map((e) => '[해리 포터 캐릭터] $e').toList();
  print(valuesList);
}
