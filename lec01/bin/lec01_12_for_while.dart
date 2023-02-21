void main() {
  // 1. for
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int totalSum = 0;

  for (int i = 0; i < numbers.length; i++) {
    totalSum += numbers[i];
  }
  print(totalSum);

  // 2. for in
  totalSum = 0;
  for (int num in numbers) {
    totalSum += num;
  }
  print(totalSum);

  // 3. while
  totalSum = 0;
  int index = 0;
  while (index < numbers.length) {
    totalSum += numbers[index];
    index++;
  }
  print(totalSum);

  // 4. do while: 맨 끝에 ; 필수!!
  totalSum = 0;
  index = 0;
  do {
    totalSum += numbers[index];
    index++;
  } while (index < numbers.length);
  print(totalSum);
}
