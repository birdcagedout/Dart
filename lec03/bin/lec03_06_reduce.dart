// reduce: collection객체를 1개의 값으로 (n차원을 0차원으로) reduce하는 함수
// reduce의 파라미터: (값, 요소) => return (요소들간 계산값)

// 파라미터 클로저에 들어가는 값
// 최초 1번째: (첫번째 요소, 두번째 요소)
//      n번째: (n-1번째 계산값, n번째 요소)

// 주의:
// 1. collection객체의 요소는 최소 1개 이상이어야 한다.
// 2. 파라미터 클로저의 "리턴값"은 최초 collection객체의 "요소"와 같은 type이어야 한다.

void main() {
  // 요소가 int이면 ==> 파라미터 클로저의 리턴값도 int
  List<int> numbers_int = [1, 3, 5, 7, 9];
  final result_int = numbers_int.reduce((prev, next) {
    print('---------------------');
    print('prev: $prev');
    print('next: $next');
    print('total: ${prev + next}');
    return prev + next;
  });
  print(result_int);

  // 요소가 double이면 ==> 파라미터 클로저의 리턴값도 double
  List<double> numbers_double = [1.0, 3.0, 5.0, 7.0, 9.0];
  final result_double = numbers_double.reduce((prev, next) {
    print('---------------------');
    print('prev: $prev');
    print('next: $next');
    print('total: ${prev + next}');
    return prev + next;
  });
  print(result_double);

  // 요소가 String인데 파라미터 클로저의 리턴값을 int로 한 경우 ==> 에러
  List<String> words = ['안녕', '나는', '김재형', '이야'];
  final result_string = words.reduce((prev, next) {
    print('---------------------');
    print('prev: $prev');
    print('next: $next');
    //print('total: ${prev.length + next.length}');
    //return prev.length + next.length;   // The return type 'int' isn't a 'String', as required by the closure's context.
    print('total: ${prev + next}');
    return prev + next;
  });
  print(result_string);
}
