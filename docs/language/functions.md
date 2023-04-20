# [Functions](https://dart.dev/language/functions)

Dart는 진정한 객체 지향 언어이므로 함수도 객체이며 유형이 [Function](https://api.dart.dev/stable/dart-core/Function-class.html) 입니다. 이는 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미합니다. 마치 함수인 것처럼 Dart 클래스의 인스턴스를 호출할 수도 있습니다. 자세한 내용은 [callable classes](https://dart.dev/language/callable-classes)를 참조하십시오.

## The main() function

모든 앱에는 앱의 진입점 역할을 하는 최상위 `main()` 함수가 있어야 합니다. `main()` 함수는 `void`를 반환하고 인수에 대한 선택적인 `List<String>` 매개 변수가 있습니다.

다음은 간단한 `main()` 기능입니다:

```dart
void main() {
  print('Hello, World!');
}
```

다음은 `main()` 에 인수를 사용하는 명령줄 앱용 함수의 예 입니다:

```dart
// Run the app like this: dart args.dart 1 test
void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}
```

[args](https://pub.dev/packages/args) library 를 사용하여 명령줄 인수를 정의하고 구문 분석 할 수 있습니다.
