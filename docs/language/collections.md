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

일반적으로 _map_ 은 _key_ 와 _value_ 을 연결하는 개체입니다. _key_ 와 _value_ 모두 모든 유형의 객체가 될 수 있습니다. 각 _key_ 는 한 번만 발생하지만 동일한 _value_ 을 여러 번 사용할 수 있습니다. _map_ 에 대한 Dart 지원은 _map literal_ 과 [Map](https://api.dart.dev/stable/dart-core/Map-class.html) 유형에 의해 제공됩니다.

```dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
```

> [!NOTE]
> Dart 는 `gifts` 는 `Map<String, String>` 유형이고 `nobleGases`가 `Map<int, String>` 유형이라고 추론합니다. _map_ 에 잘못된 유형의 값을 추가하려고 하면 분석기 또는 런타임에서 오류가 발생합니다. 자세한 내용은 [type inference](https://dart.dev/language/type-system#type-inference)에 대해 읽어보세요.

```dart
var gifts = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var nobleGases = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```

> [!NOTE]
> C# 또는 Java와 같은 언어를 사용하는 경우 `Map()` 대신 `new Map()`이 나타날 것으로 예상할 수 있습니다.
> Dart에서 `new` 키워드는 선택 사항입니다. 자세한 내용은 [생성자 사용](https://dart.dev/language/classes#using-constructors)을 참조하세요.

추가하기:

```dart
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds'; // Add a key-value pair
```

검색하기(`[]`):

```dart
var gifts = {'first': 'partridge'};
assert(gifts['first'] == 'partridge');
```

존재하지 않는 경우, _null_ 반환하기:

```dart
var gifts = {'first': 'partridge'};
assert(gifts['fifth'] == null);
```

`.length` 를 사용하여 _map_ 에서 _key-value_ 쌍의 수를 가져옵니다:

```dart
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds';
assert(gifts.length == 2);
```

_compile-time constant_ 인 _map_ 을 만들려면 _map literal_ 앞에 `const` 를 추가합니다:

```dart
final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// constantMap[2] = 'Helium'; // This line will cause an error.
```

For more information about maps, refer to the Maps section of the [Library tour](https://dart.dev/guides/libraries/library-tour#maps).

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
