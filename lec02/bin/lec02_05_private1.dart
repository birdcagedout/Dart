// private class: class이름이 _로 시작
// ==> 해당 파일 내에서만 접근 가능하고, import한다 해도 해당 클래스로 변수 생성 불가

class _Idol {
  String name;
  List<String> members;

  _Idol(this.name, this.members);

  String get firstMember {
    return this.members[0];
  }
}

// 비교하기 위해 private 아닌 class
class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

  String get firstMember {
    return this.members[0];
  }
}
