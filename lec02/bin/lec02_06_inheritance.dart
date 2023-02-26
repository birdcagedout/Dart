// 상속

void main() {
  Idol aPink = Idol(name: '에이핑크', membersCount: 5);
  aPink.sayName();
  aPink.sayMembersCount();
  print('---------------------------------------------');

  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayBoy();
  print('---------------------------------------------');

  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);
  redVelvet.sayName();
  redVelvet.sayMembersCount();
  redVelvet.sayGirl();
  print('---------------------------------------------');

  print(aPink is Idol); // true
  print(aPink is BoyGroup); // false
  print(aPink is GirlGroup); // false

  print(bts is Idol); // ********* true ***********
  print(bts is BoyGroup); // true
  print(bts is GirlGroup); // false
}

// 기본 클래스
class Idol {
  String name;
  int membersCount;

  // 생성자
  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('저희 ${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

// 남자 그룹
class BoyGroup extends Idol {
  // 생성자
  BoyGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayBoy() {
    print('저희는 남자 아이돌입니다.');
  }
}

// 걸 그룹
class GirlGroup extends Idol {
  // 생성자
  GirlGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayGirl() {
    print('저희는 여자 아이돌입니다.');
  }
}
