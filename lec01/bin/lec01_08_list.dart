void main() {
  // List(대문자 L)
  // List<T> 식별자 = [T타입 값들, ...]
  List<int> intList = [1, 2, 3, 4, 5];
  List<String> blackPink = ['제니', '지수', '로제', '리사'];

  print(intList);
  print(blackPink); // 주의: 결과값에 따옴표 없음 ==> [제니, 지수, 로제, 리사]

  // 인덱스: 0부터
  print(blackPink[0]);
  //print(blackPink[4]);    // RangeError
  print(blackPink.length); // 4

  // 추가
  blackPink.add('김재형');
  print(blackPink);

  // 삭제
  blackPink.remove('김재형');
  print(blackPink);

  // 인덱스 찾기
  print(blackPink.indexOf('리사')); // 3
}
