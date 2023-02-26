void main() {
  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());

  print(tf.num);
}

// 2배를 계산하는 클래스
class TimesTwo {
  int num;

  TimesTwo(this.num);

  int calculate() {
    return this.num * 2;
  }
}

// 4배를 계산하는 클래스
class TimesFour extends TimesTwo {
  TimesFour(int num) : super(num);

  @override
  int calculate() {
    // return this.num * 4;
    return super.calculate() * 2;
  }
}
