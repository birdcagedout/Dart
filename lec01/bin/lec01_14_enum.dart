// 열거형: 3개 값만 유효하도록 강제할 수 있다
enum Status {
  approved, // 승인
  pending, // 대기
  rejected // 거절
}

void main() {
  // 열거형 사용하기 1
  Status st = Status.approved;

  // 열거형 사용하기 2
  st = Status.values[1]; // 대기
  //st = Status.values[2]; // 거절

  // 열거형 사용하기 3
  print(st.toString() == 'Status.pending'); // Status.pending

  if (st == Status.approved) {
    print("승인되었습니다.");
  } else if (st == Status.pending) {
    print("대기중입니다.");
  } else {
    print("거절되었습니다.");
  }
}
