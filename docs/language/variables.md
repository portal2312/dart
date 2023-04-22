# [Variables](https://dart.dev/language/variables)

Auto:

```dart
var name = 'Bob';  // Is String.
```

Object type (또는 `dynamic` 이 필요하다면):

```dart
Object name = 'Bob';
```

```dart
dynamic name = 'Bob';
```

Explicitly:

```dart
String name = 'Bob';
```

> [!NOTE]
> 이 페이지는 로컬 변수에 유형 주석 대신 `var`를 사용하는 [style guide recommendation](https://dart.dev/guides/language/effective-dart/design#types)을 따릅니다.

## Default value

`null` 허용 유형이 있는 초기화되지 않은 변수의 초기 값은 `null`입니다. Dart의 다른 모든 것과 마찬가지로 숫자도 객체이기 때문에 숫자 유형의 변수도 처음에는 `null`입니다:

```dart
int? lineCount;
assert(lineCount == null);
```

> [!NOTE]
> Production code는 `assert()` 호출을 무시합니다. 반면에 개발 중에 `assert(condition)`는 *condition*이 `false`인 경우 예외를 발생시킵니다. 자세한 내용은 [Assert](https://dart.dev/language/control-flow#assert)를 확인하세요.

null 안전을 활성화하면 non-nullable 변수의 값을 사용하기 전에 초기화해야 합니다:

```dart
int lineCount = 0;
```

선언된 지역 변수를 초기화할 필요는 없지만 사용하기 전에 값을 할당해야 합니다. 예를 들어 다음 코드는 Dart가 `print()`에 전달될 때 `lineCount`가 `null`이 아님을 감지할 수 있기 때문에 유효합니다:

```dart
int lineCount;

if (weLikeToCount) {
  lineCount = countLines();
} else {
  lineCount = 0;
}

print(lineCount);
```

최상위 수준 및 클래스 변수는 느리게 초기화됩니다; 초기화 코드는 변수가 처음 사용될 때 실행됩니다.

## Late variables

`late` 수정자에는 두 가지 사용 사례가 있습니다.

- 선언 후에 초기화되는 `null`을 허용하지 않는 변수를 선언합니다.
- 변수를 느리게 초기화합니다.

종종 Dart의 제어 흐름 분석은 `null`을 허용하지 않는 변수가 사용되기 전에 `null`이 아닌 값으로 설정되는 경우를 감지할 수 있지만 때때로 분석이 실패합니다. 두 가지 일반적인 경우는 최상위 변수와 인스턴스 변수입니다. Dart는 종종 설정 여부를 결정할 수 없으므로 시도하지 않습니다.

변수가 사용되기 전에 설정되었지만 Dart가 동의하지 않는 경우 변수를 `late`로 표시하여 오류를 수정할 수 있습니다:

```dart
late String description;

void main() {
  description = 'Feijoada!';
  print(description);
}
```

> [!WARNING]
> 이 `late` 변수를 초기화하지 못하면, 변수를 사용할 때 런타임 오류가 발생합니다.

변수를 `late`로 표시했지만 선언 시 초기화하면 변수가 처음 사용될 때 초기화 프로그램이 실행됩니다. 이 지연 초기화는 몇 가지 경우에 유용합니다.

- 변수가 필요하지 않을 수 있으며, 초기화하는 데 비용이 많이 듭니다.
- 당신은 인스턴스 변수를 초기화하고 있고, 그것의 이니셜라이저는 `this`에 접근할 필요가 있습니다.

다음 예제에서 온도 변수가 사용되지 않으면 비용이 많이 드는 `readThermometer()` 함수가 호출되지 않습니다:

```dart
// This is the program's only call to readThermometer().
late String temperature = readThermometer(); // Lazily initialized.
```

## Final and const

변수를 변경하지 않으려면 `var` 대신 또는 유형에 추가하여 `final` 또는 `const`를 사용하십시오. 최종 변수는 한 번만 설정할 수 있습니다. `const` 변수는 컴파일 타임 상수입니다. (`const` 변수는 암시적으로 최종 변수입니다.)

> [!NOTE]
> 이 [Instance variables](https://dart.dev/language/classes#instance-variables)는 `final`일 수 있지만 `const`는 아닙니다.

다음은 `final` 변수를 만들고 설정하는 예입니다:

```dart
final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';
```

`final` 변수의 값은 변경할 수 없습니다:

```dart
name = 'Alice'; // Error: a final variable can only be set once.
```

**compile-time constants**로 사용할 변수에는 `const`를 사용하십시오. `const` 변수가 클래스 수준에 있는 경우 `static const`로 표시합니다. 변수를 선언하는 위치에서 값을 숫자나 문자열 리터럴, 상수 변수 또는 상수에 대한 산술 연산 결과와 같은 컴파일 타임 상수로 설정합니다:

```dart
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere
```

`const` 키워드는 단지 상수 변수를 선언하기 위한 것이 아닙니다. 이를 사용하여 상수 값을 생성하고 상수 값을 생성하는 생성자를 선언할 수도 있습니다. 모든 변수는 상수 값을 가질 수 있습니다:

```dart
var foo = const [];
final bar = const [];
const baz = []; // Equivalent to `const []`
```

위의 `baz`와 같이 `const` 선언의 초기화 식에서 `const`를 생략할 수 있습니다. 자세한 내용은 [DON'T use const redundantly](https://dart.dev/guides/language/effective-dart/usage#dont-use-const-redundantly)를 참조하세요.

이전에 `const` 값을 가졌더라도 최종이 아닌 비 `const` 변수의 값을 변경할 수 있습니다:

```dart
foo = [1, 2, 3]; // Was const []
```

`const` 변수의 값을 변경할 수 없습니다:

```dart
baz = [42]; // Error: Constant variables can't be assigned a value.
```

[type checks and casts](https://dart.dev/language/operators#type-test-operators)(`is` 및 `as`), [collection if](https://dart.dev/language/collections#control-flow-operators) 및 [spread operators](https://dart.dev/language/collections#spread-operators)(`...` 및 `...?`)를 사용하는 상수를 정의할 수 있습니다:

```dart
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.
```

> [!NOTE]
> 위 `final` 개체는 수정할 수 없지만 해당 필드는 변경할 수 있습니다. 이에 비해 `const` 개체와 해당 필드는 변경할 수 없습니다: 즉, 변경할 수 없습니다.

`const`를 사용하여 상수 값을 만드는 방법에 대한 자세한 내용은 [Lists](https://dart.dev/language/collections#lists), [Maps](https://dart.dev/language/collections#maps) 및 [Classes](https://dart.dev/language/classes)를 참조하십시오.
