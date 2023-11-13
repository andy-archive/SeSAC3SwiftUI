# SeSAC3SwiftUI
## 18주차 새싹 SwiftUI 수업
### 2023-11-13 월
#### SwiftUI
- 개념
    - 구조체(Structures) 기반
        - 값 타입
        - 프로토콜 채택 (클래스의 상속을 대체)
    - some 키워드
        - 불투명한 타입 ([Opaque Type](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/types/#Opaque-Type))
        - 컴파일 타임에 구체적인 타입 지정
    - Property Wrapper
        - `@State`
            - [State | Apple Developer Documentation](https://developer.apple.com/documentation/swiftui/state)
- 특징
    - 이름에 접두어가 붙지 않음
    - AutoLayout의 부재
#### UIKit과 비교
| 종류 | SwiftUI | UIKit |
|-|-|-|
| 기반  | 구조체 기반 | 클래스 기반 |
| 프로그래밍 패러다임 | 선언형 | 명령형 |
| UI의 방향 | 안 → 밖 | 밖 → 안 |
| AutoLayout | 부재 | 존재 |
| 상속 | 프로토콜 채택 | 클래스의 상속 |
