// getter, setter : class의 property를 read/write할 수 있는 special method
// 내부변수를 직접 access하지 않으면서, 함수처럼 무겁지도 않은 간결한 접근방법
// ==> 주의: method이지만 사용할 때는 property처럼 사용한다(소괄호를 써서 호출하지 말것!)
// ==> 현대의 immutable programming에서는 내부변수에 final을 권장하므로 setter는 거의 사용 안함.

void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  print(blackPink.firstMember);

  Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']);
  print(bts.firstMember);

  blackPink.firstMember = '김재형';
  print(blackPink.firstMember);
}

class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

  // getter: 리턴값 있음, 소괄호 없음
  String get firstMember {
    return this.members[0];
  }

  // setter: 리턴값 없음, 소괄호 있음, 파라미터 무조건 1개
  set firstMember(String name) {
    this.members[0] = name;
  }
}
