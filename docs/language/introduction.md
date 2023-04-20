# [Introduction to Dart](https://dart.dev/language)

이 페이지는 주요 기능의 샘플을 통해 Dart 언어에 대한 간략한 소개를 제공합니다.

Dart 언어에 대해 자세히 알아보려면 왼쪽 메뉴의 언어 아래에 나열된 개별 주제 페이지를 방문하세요.

Dart의 핵심 라이브러리에 대한 내용은 [library tour](https://dart.dev/guides/libraries/library-tour)를 확인하세요. [Dart cheatsheet codelab](https://dart.dev/codelabs/dart-cheatsheet)을 방문하여 더 많은 실습 소개를 볼 수도 있습니다.

## Hello World

모든 앱에는 실행이 시작되는 최상위 `main()` 함수가 필요합니다. 명시적으로 값을 반환하지 않는 함수는 반환 유형이 `void`입니다. 콘솔에 텍스트를 표시하려면 최상위 `print()` 함수를 사용할 수 있습니다.

```dart
void main() {
  print('Hello, World!');
}
```

명령줄 인수에 대한 선택적 매개변수를 포함하여 Dart의 [`main()` function](https://dart.dev/language/functions#the-main-function)에 대해 자세히 읽어보세요.
