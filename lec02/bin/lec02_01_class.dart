void main() {
  Idol idol =
      Idol(); // Dart에서는 new가 optional이라서 있으나 없으나 같다. new Idol() = Idol()
  idol.intro();
}

class Idol {
  String name = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];

  void sayHello() {
    print('안녕하세요 블랙핑크입니다.');
  }

  void intro() {
    String names = '';
    for (String member in members) {
      names += member + ' ';
    }
    print("안녕하세요 저희는 $names입니다.");
  }
}
