// 실전 예제
// DB(back-end)에서 받아온 JSON데이터를 front-end에서 사용하기 전에
// JSON데이터의 무결성을 보증하기 위해 특정 클래스의 인스턴스로 만든 후 사용한다.

// 1. null-assertion operator: ! (!왼쪽값이 절대 null이 아님을 확신할 수 있을 때만 사용. 만약 null이면 런타임 에러)
// 2. class에서 toString함수 override (객체를 print하면 Instance of 'Person'와 같이 나오는데, toString()을 오버라이드 하면 객체의 String 표현을 customize할 수 있다)

void main() {
  // 1. DB에서 받아온 JSON데이터
  final List<Map<String, String>> people = [
    {'name': '지수', 'group': '블랙핑크'},
    {'name': '로제', 'group': '블랙핑크'},
    {'name': 'RM', 'group': 'BTS'},
    {'name': '뷔', 'group': 'BTS'}
  ];
  print(people);

  // 3. JSON데이터를 클래스 인스턴스로 받아옴
  // 이때 요소인 Map 중에 x['name']이나 x['group']이 없을 수도 있기 때문에 에러 발생
  // ==> 방법1. Person 클래스 정의에서 name, group 프로퍼티를 nullable로 정의하거나,
  // ==> 방법2. map 함수 내에서 null-assertion operator(!)를 사용하거나 (==> 이 경우 JSON데이터에 오타/오류가 있어서 null값이 발생하면 런타임 오류 발생)
  final parsedPeople = people.map((x) => Person(name: x['name']!, group: x['group']!)).toList();
  print(parsedPeople); // toString override 없을 때: [Instance of 'Person', Instance of 'Person', Instance of 'Person', Instance of 'Person']

  // 4. toString()을 override하지 않아도 loop로 각 객체를 formatting하면 아래와 같이 String으로 표현할 수는 있다.
  // 하지만, toString()을 override하면 출력할 때마다 formatting 없이도 특정 형태로 표현할 수 있다.
  for (Person person in parsedPeople) {
    print("name: ${person.name}, group: ${person.group}");
  }
  /* toString 없이 formatting한 경우:
  name: 지수, group: 블랙핑크
  name: 로제, group: 블랙핑크
  name: RM, group: BTS
  name: 뷔, group: BTS
  */

  // 6. toString()을 override한 경우:
  print(parsedPeople); // [Person(name: 지수, group: 블랙핑크), Person(name: 로제, group: 블랙핑크), Person(name: RM, group: BTS), Person(name: 뷔, group: BTS)]

  // 7. where 조건으로 분류하기
  final btsList = parsedPeople.where((element) => element.group == 'BTS').toList();
  print(btsList); // [Person(name: RM, group: BTS), Person(name: 뷔, group: BTS)]

  // <최종 결론: 함수형 프로그래밍에서는 chaining 형식으로 한줄에 다 쓸 수 있다>
  // 너무 길면 에러 가능성도 커지므로 너무 길지 않게 적당히 잘라서 쓸 것.
  final myBTSList = people.map((e) => Person(name: e['name'], group: e['group'])).where((element) => element.group == 'BTS').toList();
  print(myBTSList); // [Person(name: RM, group: BTS), Person(name: 뷔, group: BTS)]
}

// 2. 데이터 넣을 클래스 정의
class Person {
  final String? name; // 값이 없을 수도 있으므로 nullable이어야 한다
  final String? group; // 값이 없을 수도 있으므로 nullable이어야 한다

  Person({required this.name, required this.group});

  // 5. 객체의 String 표현을 customize할 수 있다
  @override
  String toString() {
    return 'Person(name: $name, group: $group)';
  }
}
