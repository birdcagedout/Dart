void main() {
  Employee e1 = Employee('슬기');
  Employee e2 = Employee('초롱');

  Employee.building = '롯데타워';
  // e1.building = '롯데타워';    // 인스턴스로 static 변수 접근 불가

  e1.sayNameBuilding();
  e2.sayNameBuilding();

  Employee.sayBuilding();
  // e1.sayBuilding();   // 인스턴스로 static 메소드 접근 불가
}

class Employee {
  // static 변수: 특정 인스턴스와 무관하게 class에 동일하게 귀속되는 변수
  static String? building;
  final String name;

  Employee(this.name);

  void sayNameBuilding() {
    print('저는 ${this.name}입니다. ${building}에서 근무합니다.');
  }

  // static 메소드
  static void sayBuilding() {
    print('저희는 ${building}에서 근무합니다.');
  }
}
