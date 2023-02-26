// immutable programing:
// 1. 클래스 인스턴스 변수들은 생성자 호출 이후 바꿀 수 없도록 final로 고정시킴
// 2. 생성자 선언시 const를 붙이는 경우(constant constructor)도 있다. ==> 클래스 인스턴스(l-value)의 내부값이 바뀌지 않을 때
//    ==> 이때 클래스의 모든 인스턴스 변수는 final로 선언되어야 한다.(아니면 에러)
// 3. 생성자 호출시 const를 붙이는 경우도 있다.
//    ==> 이때 파라미터 값들은 반드시 compile-time에 고정된 constant값이어야 한다.
//    ==> 4. 이렇게 생성된 인스턴스들은, 파라미터가 같다면 인스턴스 자체가 동일하다.

void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  blackPink.sayHello();
  blackPink.intro();

  // 1. 이런 짓을 못하도록 ==> 클래스의 인스턴스 변수들을 모두 final로 선언
  // blackPink.name = '코드팩토리';
  // blackPink.members.add('코드팩토리');

  // 3. 생성자 호출시 const를 사용한 경우 ==> 파라미터값이 반드시 compile-time에 고정된 const값이어야 한다.
  // Idol blackPink2 = const Idol(DateTime.now().toString(), ['지수', '제니', '리사', '로제']);

  // 4. const 생성자로 생성한 인스턴스 값 비교
  Idol b1 = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  Idol b2 = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  Idol b3 = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  Idol b4 = const Idol('블랙빵꾸', ['지수', '제니', '리사', '로제']);
  print(b1 == b2); // false
  print(b2 == b3); // true
  print(b3 == b4); // false
}

class Idol {
  final String name;
  final List<String> members;

  // 2. 기본생성자를 const로 선언한 경우 멤버변수가 모두 final이어야 한다.
  const Idol(this.name, this.members);

  // named생성자1: (기본생성자 외에) 하나의 List로 name, members를 모두 받는 생성자
  Idol.fromList(List values)
      : this.name = values[0],
        this.members = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void intro() {
    String names = '';
    for (String member in members) {
      names += member + ' ';
    }
    print("안녕하세요 저희는 $names입니다.");
  }
}
