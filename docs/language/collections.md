# [Collections](https://dart.dev/language/collections)

## Lists

Dart는 _list_, _set_ 및 _map_ [collections](https://dart.dev/guides/libraries/library-tour#collections)을 기본적으로 지원합니다. _Collections_ 에 포함된 유형 구성에 대해 자세히 알아보려면 [Generics](https://dart.dev/language/generics) 를 확인하십시오.

```dart
var list = [1, 2, 3];
```

> [!NOTE]
> Dart는 `list` 에 `List<int>` 유형이 있다고 추론합니다. 정수가 아닌 개체를 이 목록에 추가하려고 하면 분석기 또는 런타임에서 오류가 발생합니다. 자세한 내용은 [type inference](https://dart.dev/language/type-system#type-inference)에 대해 읽어보세요.

Dart 컬렉션 리터럴의 마지막 항목 뒤에 `,` 를 추가할 수 있습니다. 이 _tailing comma_ 는 컬렉션에 영향을 주지 않지만 `copy-paste` 오류를 방지하는 데 도움이 될 수 있습니다:

```dart
var list = [
  'Car',
  'Boat',
  'Plane',
];
```

```dart
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);

list[1] = 1;
assert(list[1] == 1);
```

컴파일 시간 상수인 목록을 만들려면 목록 리터럴 앞에 const를 추가합니다:

```dart
var constantList = const [1, 2, 3];
// constantList[1] = 1; // This line will cause an error.
```

For more information about lists, refer to the Lists section of the [Library tour](https://dart.dev/guides/libraries/library-tour#lists).

## Sets

## Maps

## Operators

### Spread operators

Dart는 _list_, _map_ 및 _set_ 리터럴에서 **spread operator**(`...`) 및 **null-aware spread operator**(`...?`)를 지원합니다. _spread operators_ 는 _collection_ 에 여러 값을 삽입하는 간결한 방법을 제공합니다.

```dart
var list = [1, 2, 3];
var list2 = [0, ...list];
assert(list2.length == 4);
```

```dart
var list2 = [0, ...?list];
assert(list2.length == 1);
```

For more details and examples of using the spread operator, see the [spread operator proposal](https://github.com/dart-lang/language/blob/master/accepted/2.3/spread-collections/feature-specification.md).

### Control-flow operators

Dart는 _list_, _map_ 및 _set_ 리터럴에서 사용하기 위한 **collection if** 과 **collection for** 를 제공합니다. 이러한 연산자를 사용하여 조건(`if`) 및 반복(`for`)을 사용하여 모음을 작성할 수 있습니다:

```dart
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
```

```dart
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
```

For more details and examples of using collection `if` and `for`, see the [control flow collections proposal](https://github.com/dart-lang/language/blob/master/accepted/2.3/control-flow-collections/feature-specification.md).
