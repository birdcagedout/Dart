// try {} catch(e) {}
// 공식문서: https://dart.dev/guides/language/language-tour#exceptions
// try~on: https://velog.io/@adbr/Dart-%EC%98%88%EC%99%B8%EC%B2%98%EB%A6%AC-try-on-vs-try-catch

import 'dart:math';

void main() {
  try {
    final int num = Random().nextInt(10); // 0 ~ 9
    print(num);

    // 에러를 일부러 발생시킴
    if (num % 3 == 0) {
      throw UnimplementedError('0, 3, 6, 9일 경우');
    } else if (num % 3 == 1) {
      throw Exception('1, 4, 7일 경우'); // type: _Exception
    }
    // 2, 5, 8일 경우만 실행됨
    print("try의 끝부분");

    // 0, 3, 6, 9일 경우만 실행되는 블럭
    // Exception 또는 Error 변수를 직접 확인하고 싶은 경우만 catch(변수이름)을 쓰고, 필요없으면 on Exception/Error종류 {}만으로 충분하다
  } on UnimplementedError catch (uie) {
    print(uie); // UnimplementedError: 짝수일 경우

    // 1, 4, 7일 경우만 실행되는 블럭
    // 구체적인 Exception/Error명을 on으로 잡지 않은 모든 나머지 경우에는 catch(e) {}로 들어온다
  } catch (e) {
    print(e); // Exception: 이름이 잘못됨

    // 모든 경우에 실행되는 블럭(생략가능함)
  } finally {
    print("어쨌든 finally는 실행됨");
  }
}
