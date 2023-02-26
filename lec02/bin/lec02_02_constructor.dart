// 기본생성자: 클래스이름(파라미터) : 인스턴스변수초기화1, 인스턴스변수초기화2, ...;
// named생성자: 클래스이름.네임드생성자이름(파라미터) : 인스턴스변수초기화1, 인스턴스변수초기화2, ...;

void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  blackPink.sayHello();
  blackPink.intro();

  Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']);
  bts.sayHello();
  bts.intro();

  // named생성자
  Idol bts2 = Idol.fromList([
    'BTS',
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  ]);
  bts2.sayHello();
  bts2.intro();
}

class Idol {
  String name;
  List<String> members;

  // 기본생성자0: 일반 함수처럼 사용한 경우 OK
  // Idol(String name, List<String> members) {
  //   this.name = name;
  //   this.members = members;
  // }

  // 기본생성자1
  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.members = members;

  // 기본생성자2: 간결하게
  Idol(this.name, this.members);

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
