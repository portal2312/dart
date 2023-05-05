# [Built-in types](https://dart.dev/language/built-in-types)

- [Numbers](#numbers) (`int`, `double`)
- [Strings](#strings) (`String`)
- [Booleans](#booleans) (`bool`)
- [Lists](https://dart.dev/language/collections#lists) (`List`, _arrays_ 로 알려져 있음)
- [Sets](https://dart.dev/language/collections#sets) (`Set`)
- [Maps](https://dart.dev/language/collections#maps) (`Map`)
- [Runes](#runes-and-grapheme-clusters) (`Runes`; 종종 `characters` API 로 대처 됨)
- [Symbols](#symbols) (`Symbol`)
- 값 `null` (`Null`)

이 지원에는 literal 을 사용하여 개체를 만드는 기능이 포함됩니다. 예를 들어 `'this is a string'`은 _string literal_ 이고 `true`는 _boolean literal_ 입니다.

Dart의 모든 변수는 객체(_class_ 의 _instance_)를 참조하기 때문에 일반적으로 _constructors_ 를 사용하여 변수를 초기화할 수 있습니다.

일부 기본 제공 형식에는 고유한 _constructors_ 가 있습니다. 예를 들어 `Map()` _constructor_ 를 사용하여 _map_ 를 만들 수 있습니다:

- `Object`: `Null` 을 제외한 모든 Dart 클래스의 _superclass_ 입니다.
- `Enum`: 모든 열거형의 _superclass_ 입니다.
- `Future` and `Stream`: [비동기 지원](https://dart.dev/language/async)에 사용됩니다.
- `Iterable`: [for-in loop](https://dart.dev/guides/libraries/library-tour#iteration) 및 동기 [생성기 함수](https://dart.dev/language/functions#generators)에 사용됩니다.
- `Never`: 표현식이 평가를 성공적으로 완료할 수 없음을 나타냅니다. 항상 예외를 발생시키는 함수에 가장 자주 사용됩니다.
- `dynamic`: 정적 검사를 비활성화할 것임을 나타냅니다. 일반적으로 `Object` 또는 `Object?` 를 대신 사용해야 합니다.
- `void`: 값이 사용되지 않음을 나타냅니다. 종종 _return_ 유형으로 사용됩니다.

`Object`, `Object?`, `Null` 및 `Never` _classes_ 는 [Understanding null safety](https://dart.dev/null-safety/understanding-null-safety#top-and-bottom)에 설명된 대로 _class_ 계층 구조에서 특별한 역할을 합니다.

## Numbers

_Dart numbers_ 는 두 가지 종류가 있습니다:

[int](https://api.dart.dev/stable/dart-core/int-class.html)

[double](https://api.dart.dev/stable/dart-core/double-class.html)

`int`와 `double`은 모두 `num`의 하위 유형입니다. _num_ 유형에는 `+`, `-`, `/` 및 `*` 와 같은 기본 연산자가 포함되며 `abs()`, `ceil()` 및 `floor()`, 다른 방법들 (`>>`와 같은 비트 연산자는 `int` _class_ 에 정의되어 있습니다) 등의 메서드도 있습니다. _num_ 및 해당 하위 유형에 원하는 것이 없으면 [dart:math](https://api.dart.dev/stable/dart-math) 라이브러리가 찾을 수 있습니다.

PASS

For more information, see [Numbers in Dart](https://dart.dev/guides/language/numbers).

## Strings

Dart 문자열(`String` 객체)은 UTF-16 코드 단위 시퀀스를 보유합니다. `'` 또는 `"` 를 사용하여 문자열을 만들 수 있습니다:

```dart
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";
```

`${expression}`을 사용하여 표현식의 값을 문자열 안에 넣을 수 있습니다. 표현식이 식별자인 경우 `{}`를 건너뛸 수 있습니다. 객체에 해당하는 문자열을 얻기 위해 Dart는 객체의 `toString()` 메서드를 호출합니다:

```dart
var s = 'string interpolation';

assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, '
        'which is very handy.');
assert('That deserves all caps. '
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. '
        'STRING INTERPOLATION is very handy!');
```

인접한 문자열 _literal_ 또는 `+` 연산자를 사용하여 문자열을 연결할 수 있습니다:

```dart
var s1 = 'String '
    'concatenation'
    " works even over line breaks.";
assert(s1 ==
    'String concatenation works even over '
        'line breaks.');

var s2 = 'The + operator ' + 'works, as well.';
assert(s2 == 'The + operator works, as well.');
```

여러 줄 문자열을 만드는 또 다른 방법: `'` 또는 `"`와 함께 삼중따옴표를 사용합니다:

```dart
var s1 = '''
You can create
multi-line strings like this one.
''';

var s2 = """This is also a
multi-line string.""";
```

`r`을 접두어로 지정하여 "_raw_" 문자열을 생성할 수 있습니다:

```dart
var s = r'In a raw string, not even \n gets special treatment.';
```

_unicode_ 문자를 문자열로 표현하는 방법에 대한 자세한 내용은 [Runes and grapheme clusters](#runes-and-grapheme-clusters)를 참조하세요.

보간된 표현식이 _compile-time constants_ 인 한 _literal_ 문자열은 compile-time constants 입니다, 이는 어떤 보간된 표현식이 compile-time 상수인 한 _null_ 또는 숫자, 문자열 또는 _boolean_ 값으로 평가됩니다.

```dart
// These work in a const string.
const aConstNum = 0;
const aConstBool = true;
const aConstString = 'a constant string';
const validConstString = '$aConstNum $aConstBool $aConstString'; // Working.

// These do NOT work in a const string.
var aNum = 0;
var aBool = true;
var aString = 'a string';
const aConstList = [1, 2, 3];
// const invalidConstString = '$aNum $aBool $aString $aConstList';  // Does not working.
```

For more information on using strings, check out [Strings and regular expressions](https://dart.dev/guides/libraries/library-tour#strings-and-regular-expressions).

## Booleans

_boolean_ 값을 나타내기 위해 Dart에는 `bool`이라는 유형이 있습니다. 두 개체만 bool 유형을 갖습니다: boolean _literal_ `true` 및 `false`는 둘 다 compile-time constants 입니다.

Dart의 유형 안전성은 `if (nonbooleanValue)` 또는 `assert (nonbooleanValue)`와 같은 코드를 사용할 수 없음을 의미합니다. 대신 다음과 같이 명시적으로 값을 확인하십시오:

```dart
// Check for an empty string.
var fullName = '';
assert(fullName.isEmpty);

// Check for zero.
var hitPoints = 0;
assert(hitPoints <= 0);

// Check for null.
var unicorn = null;
assert(unicorn == null);

// Check for NaN.
var iMeantToDoThis = 0 / 0;
assert(iMeantToDoThis.isNaN);
```

## Runes and grapheme clusters

Dart에서 [runs](https://api.dart.dev/stable/dart-core/Runes-class.html)은 문자열의 _unicode_ 코드 포인트를 노출합니다. [문자 패키지](https://pub.dev/packages/characters)를 사용하여 [_unicode_(확장) 문자소 클러스터](https://unicode.org/reports/tr29/#Grapheme_Cluster_Boundaries)라고도 하는 사용자 인식 문자를 보거나 조작할 수 있습니다.

_unicode_ 는 전 세계의 모든 쓰기 시스템에서 사용되는 각 문자, 숫자 및 기호에 대해 고유한 숫자 값을 정의합니다. Dart 문자열은 UTF-16 코드 단위의 시퀀스이기 때문에 문자열 내에서 _unicode_ 코드 포인트를 표현하려면 특별한 구문이 필요합니다. _unicode_ 코드 포인트를 표현하는 일반적인 방법은 `\uXXXX`입니다. 여기서 `XXXX`는 4자리 16진수 값입니다.

개별 _unicode_ 문자를 읽거나 써야 하는 경우 _characters package_ 에서 _String_ 에 정의한 `characters` _getter_ 를 사용하십시오. 반환된 _Characters_ 객체는 일련의 문자소 클러스터로서의 문자열입니다:

PASS

For details on using the characters package to manipulate strings, see the [example](https://pub.dev/packages/characters/example) and [API reference](https://pub.dev/documentation/characters) for the characters package.

## Symbols

_Symbol_ 객체는 Dart 프로그램에서 선언된 연산자 또는 식별자를 나타냅니다. 기호를 사용할 필요가 없을 수도 있지만 최소화는 식별자 이름을 변경하지만 식별자 기호는 변경하지 않기 때문에 이름으로 식별자를 참조하는 API에 매우 중요합니다.

식별자에 대한 기호를 얻으려면 기호 리터럴을 사용하십시오. 기호 리터럴은 `#` 다음에 식별자가 오는 것입니다:

```dart
#radix
#bar
```

기호 리터럴은 _compile-time constants_ 입니다.
