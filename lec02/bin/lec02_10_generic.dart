// generic: 타입을 외부에서 받을 때 사용

void main() {
  Lecture<String> lec1 = Lecture('123', '강의1');
  lec1.printIdType();

  Lecture<int> lec2 = Lecture(123, '강의2');
  lec2.printIdType();
}

class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}
