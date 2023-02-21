void main() {
  // Map: (K:V)쌍이 요소가 되는 컬렉션 타입
  // python에서 dictionary와 같은 타입

  Map<String, String> dic = {"Harry Potter": "해리 포터", "Ron Weasdley": "론 위즐리", "Hermione Granger": "헤르미온느 그레인저"};
  print(dic);

  // 해리포터에 나오는 인물인지 여부
  Map<String, bool> dic2 = {"Harry Potter": true, "Ron Weasdley": true, "Hermione Granger": true};

  // Map 끝에 추가
  dic2.addAll({'Spiderman': false, 'Batman': false});
  print(dic2);

  // Map 끝에 추가2
  dic2['김재형'] = false;
  print(dic2);

  // Map의 value 변경
  dic2['김재형'] = true;
  print(dic2);

  // Map의 요소에 접근: Key값으로
  if (dic2['Spiderman'] == false) {
    print("스파이더맨은 안 나옵니다.");
  } else {
    print("스파이더맨도 나옵니다.");
  }

  // Map의 요소 삭제: Key값으로
  dic2.remove('김재형');
  print(dic2);

  // key 가져오기 ==> 리턴값은 _CompactIterable<String> 타입의 Iterable 객체
  print(dic2.keys);

  // value 가져오기 ==> 리턴값은 _CompactIterable<bool> 타입의 Iterable 객체
  print(dic2.values);

  // Map의 요소가 있는지 확인
  //print('Spiderman' in dic2.keys);   // 안 됨
  print(dic2.containsKey('Spiderman')); // true
  print(dic2.containsValue(false)); // true
}
