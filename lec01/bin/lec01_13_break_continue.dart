void main() {
  int total = 0;

  // break
  for (var i = 1; i <= 1000; i++) {
    total += i;
    if (total >= 5050) {
      break;
    }
  }
  print(total);

  // continue
  total = 0;
  for (int i = 0; i <= 10; i++) {
    if (i == 5) {
      continue;
    }
    total += i;
  }
  print(total);
}
