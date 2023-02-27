// fold: reduce함수의 단점(collection 요소의 type과 파라미터 클로저의 리턴 type이 같아야 한다) 극복
// fold<리턴값T>(
//    (시작점, prev, next) => 리턴값
//  );

void main() {
  // reduce와 같은 용법으로 사용한 경우
  List<int> numbers = [1, 3, 5, 7, 9];
  final sum = numbers.fold<int>(0, (prev, next) => prev + next);
  print(sum);

  // reduce와 다른 용법으로 type을 사용한 경우
  List<String> words = ['안녕', '나는', '김재형', '이야'];
  final total = words.fold<int>(0, (value, element) {
    print('---------------------');
    print('value: $value');
    print('element: $element');
    print('total: ${value + element.length}');
    return value + element.length;
  });
  print(total);
}
