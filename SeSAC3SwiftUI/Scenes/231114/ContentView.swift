//
//  ContentView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Nice")
                .foregroundStyle(Color.white) //.foregroundColor(Color.blue) // will be Deprecated
                .font(.largeTitle)
                .bold()
                .background(Color.yellow)
                .padding()
                .background(Color.red) // 코드의 흐름대로 반영 (패딩을 준 이후 생김)
                .clipShape(Circle())
            .border(.green, width: 3)
            
            Text("Nice")
                .foregroundStyle(Color.white) //.foregroundColor(Color.blue) // will be Deprecated
                .font(.largeTitle)
                .bold()
                .background(Color.yellow)
                .padding()
                .background(Color.red) // 코드의 흐름대로 반영 (패딩을 준 이후 생김)
                .clipShape(Circle())
            .border(.green, width: 3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 📌 button 실습
 var body: some View { //some View {
//        var body: Button<Text> { //some View {
     
     Button("Click") {
         let type = type(of: self.body)
         print(type)
     }
     .foregroundStyle(.yellow)
     .padding()
 }
 
 📌 some 키워드를 쓰는 이유
 - 생성 당시에는 어떤 타입인지 모르고, 사용 시 구체적인 타입 정의
 
 1. 일반 버튼
 Button<Text>
 
 2. `.foregroundStyle(.yellow)` 추가
 ModifiedContent<Button<Text>, _ForegroundStyleModifier<Color>>
 
 3. `.padding()` 추가

 📌 코드
 
 struct ContentView: View
 구조체 -> 상속은 프로토콜로 한다
 
 modifier methods를 사용해 코드의 순서대로 반영
 */
 
 /* Text 실습

 Text("Nice")
     .font(.largeTitle)
     .bold()
     .background(Color.yellow)
     .foregroundStyle(Color.white)
     //.foregroundColor(Color.blue) // will be Deprecated
     .padding()
     .background(Color.red) // 코드의 흐름대로 반영 (패딩을 준 이후 생김)
 */
