void main() {
  // String 연산: +만 가능
  String s1 = '뉴진스';
  String s2 = '민지';
  print(s1 + ' 멤버중 최고 = ' + s2);

  // String interpolation: $변수이름 / "${표현식}"
  print('$s1=====>$s2'); // 변수이름 뒤에 빈칸 없어도 됨
  print('${s1} ==> ${s2}');

  // 변수이름까지만 가능. 속성은 불가능
  print('$s1.runtimeType'); // 뉴진스.runtimeType
  print('${s1.runtimeType}'); // String
}
