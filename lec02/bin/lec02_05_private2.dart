import 'lec02_05_private1.dart';

void main() {
  // private 클래스는 파일 외부에서 접근 불가
  // _Idol blackPink = _Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  // print(blackPink.firstMember);

  // 일반 클래스는 파일 외부에서 접근 가능
  Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']);
  print(bts.firstMember);
}
