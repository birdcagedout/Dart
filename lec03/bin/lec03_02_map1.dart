// "map 함수" 사용법1(변수 타입 Map과 다르다!!)
// List에 map함수 적용

void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  // 1. map: 파라미터 함수에 return 생략 불가(생략하려면 화살표 함수 사용할 것!)
  //var newBlackPink = blackPink.map((x) {
  //  return "블랙핑크 " + x;
  //});

  // 2. map: 파라미터 함수는 화살표 함수로 사용할 수 있다.(이 경우 return 생략 OK)
  var newBlackPink = blackPink.map((e) => "블랙핑크 " + e);

  // 3. map: var 대신 final 사용 가능
  final newBlackPink2 = blackPink.map((e) => "블랙핑크 " + e);

  // 4-1. 주의: 이때 map함수의 리턴값은 List가 아니라, Iterable<String> 객체이다.
  //List<String> newBlackPink2 = blackPink.map((e) => "블랙핑크 " + e); // 에러

  // 4-2. 따라서 리턴값을 List로 받으려면 toList() 호출해야 한다.
  List<String> newBlackPink3 = blackPink.map((e) => "블랙핑크 $e").toList();
  print(newBlackPink3); // [블랙핑크 로제, 블랙핑크 지수, 블랙핑크 리사, 블랙핑크 제니]

  // 5. map으로 반환된 객체들은 ***항상 서로 다른 객체***이다.(값이 같더라도)
  print(newBlackPink == newBlackPink2); // false
  print(newBlackPink == newBlackPink3); // false

  // 실용적인 예제
  String fileNumber = '13579';
  final parsed = fileNumber.split('').map((e) => '$e.jpg').toList();
  print(parsed); // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
}
