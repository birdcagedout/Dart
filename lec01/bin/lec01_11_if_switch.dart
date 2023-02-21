void main() {
  int num = 2;

  // if () {} ==> 소괄호 필수!!
  if (num % 3 == 0) {
    print("0입니다.");
  } else if (num % 3 == 1) {
    print("1입니다.");
  } else {
    print("2입니다.");
  }

  print("=====================");

  // switch () {} ==> 소괄호 필수, case마다 break 필수
  switch (num % 3) {
    case 0:
      print("0입니다.");
      break;
    case 1:
      print("1입니다.");
      break;
    default:
      print("2입니다.");
  }
}
