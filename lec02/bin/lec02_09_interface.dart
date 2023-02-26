// interface:
// 형태는 class로 정의한다.(인스턴스로 만드는 것을 방지하기 위해 abstract class로 만든다)
// implement하는 class에서 내부를 그대로 구현하여야 한다.
// 특별한 구조를 강제하기 위함

import 'lec02_05_private1.dart';

void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelet = GirlGroup('레드벨벳');
  // IdolInterface test = IdolInterface('test');

  print(bts is IdolInterface); // true
  print(redVelet is IdolInterface); // true
}

// interface
abstract class IdolInterface {
  String name;
  IdolInterface(this.name);
  void sayName();
}

class BoyGroup implements IdolInterface {
  String name;
  BoyGroup(this.name);
  void sayName() {}
}

class GirlGroup implements IdolInterface {
  String name;
  GirlGroup(this.name);
  void sayName() {}
}
