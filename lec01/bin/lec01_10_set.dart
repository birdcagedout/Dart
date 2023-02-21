void main() {
  // Set: 중복 금지
  final Set<String> names = {'Code Factory', 'Flutter', 'Black Pink', 'Flutter'};
  print(names); // {Code Factory, Flutter, Black Pink}

  // 제거
  names.remove('Flutter');
  print(names); // {Code Factory, Black Pink}

  // 추가
  names.add("Python");
  print(names); // {Code Factory, Flutter, Black Pink, Python}

  // 있는지 확인
  print(names.contains('Black Pink'));
}
