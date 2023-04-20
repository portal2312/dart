# [Overview](https://dart.dev/overview)

Dart는 모든 플랫폼에서 빠른 앱을 개발하기 위한 클라이언트 최적화 언어입니다. 목표는 앱 프레임워크를 위한 유연한 실행 런타임 플랫폼과 함께 다중 플랫폼 개발을 위한 가장 생산적인 프로그래밍 언어를 제공하는 것입니다.

언어는 기술 범위, 즉 언어의 기능과 강점을 형성하는 개발 중에 선택한 사항으로 정의됩니다. Dart는 다양한 컴파일 대상(웹, 모바일 및 데스크톱)에서 개발(1초 미만의 상태 저장 핫 리로드) 및 고품질 프로덕션 경험을 모두 우선시하여 클라이언트 개발에 특히 적합한 기술 범위를 위해 설계되었습니다.

Dart는 [Flutter](https://flutter.dev/)의 기반이기도 합니다. Dart는 _Flutter_ 앱을 지원하는 언어와 런타임을 제공하지만 Dart는 코드 서식 지정, 분석 및 테스트와 같은 많은 핵심 개발자 작업도 지원합니다.

## Dart: The language

Dart 언어는 형식이 안전합니다. 변수의 값이 항상 변수의 정적 유형과 일치하는지 확인하기 위해 정적 유형 검사를 사용합니다. 경우에 따라 이를 typing 이라고 합니다. Types은 필수사항이지만 유형 유추로 인해 유형 주석은 선택사항입니다. Dart 타이핑 시스템은 또한 유연하여 런타임 검사와 결합된 유형의 사용을 허용하며 dynamic, 이는 실험 중에 또는 특히 `dynamic`이어야 하는 코드에 유용할 수 있습니다.

Dart는 [sound null safety](https://dart.dev/null-safety) 을 제공합니다. 즉, `null`이 될 수 있다고 말하지 않는 한 값이 `null`이 될 수 없습니다. 안정적인 `null` 안전성을 갖춘 Dart는 정적 코드 분석을 통해 런타임 시 `null` 예외로부터 사용자를 보호할 수 있습니다. 다른 많은 `null-safe` 언어와 달리 Dart는 변수가 `null`을 허용하지 않는다고 결정할 때 해당 변수는 항상 `null`을 허용하지 않습니다. Debugger 에서 실행 중인 코드를 검사하면 `null` 허용 여부가 runtime 에 유지되는 것을 볼 수 있습니다(따라서 `null` 안전성이 우수함).

## Dart: The libraries

PASS

## Dart: The platforms

Dart의 컴파일러 기술을 사용하면 다양한 방식으로 코드를 실행할 수 있습니다:

- **Native platform**: 모바일 및 데스크톱 장치를 대상으로 하는 앱의 경우 Dart에는 **JIT(Just-In-Time)** 컴파일 기능이 있는 Dart VM과 기계 코드 생성을 위한 **AOT(Ahead-of-Time)** 컴파일러가 모두 포함되어 있습니다.

- **Web platform**: 웹을 대상으로 하는 앱의 경우 Dart는 개발 또는 프로덕션 목적으로 컴파일할 수 있습니다. 웹 컴파일러는 Dart를 JavaScript로 변환합니다.

## Learning Dart

PASS
