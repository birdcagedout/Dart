// where함수(map함수와 유사하나 true/false 조건을 걸어서 true인 것들만 처리할 수 있다. 파이썬의 filter함수 같은 효과)

void main() {
  List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '지수', 'group': '블랙핑크'},
    {'name': 'RM', 'group': 'BTS'},
    {'name': '뷔', 'group': 'BTS'}
  ];
  print(people);

  // List의 각 요소의 "조건"을 따져서 true인 것만 "Iterable 객체"로 묶어서 리턴 (List형태를 원하면 toList())
  final blackPinkOnly = people.where((element) => element['group'] == '블랙핑크').toList();
  print(blackPinkOnly);
}
