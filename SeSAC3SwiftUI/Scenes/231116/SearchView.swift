//
//  SearchView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/16.
//

import SwiftUI

struct SearchView: View {
    
    @State var randomNum = 0
    
    init(randomNum: Int = Int.random(in: 1...100)) {
        print("\(self) init")
        print("\(randomNum)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            HueView() // new struct
            jackView // struct property
            kokoView()// struct method
            Text("Bran") // Text struct
                .background(Color.random())
            
            Text("Andy \(randomNum)")
                .background(Color.random())
            
            Button("클릭") { // 클릭 시 매번 뷰가 새로 그려짐
                randomNum = Int.random(in: 1...100)
            }
        }
    }
    
    var jackView: some View {
        Text("Jack")
            .background(Color.random())
    }
    
    func kokoView() -> some View {
        Text("Koko")
            .background(Color.random())
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct HueView: View {
    
    // 이니셜라이저는 계속 실행됨
    init() {
        print("\(self) init")
    }
    
    // 변경되는 부분이 없어서 한번만 실행됨
    var body: some View {
        Text("Hue")
            .background(Color.random())
    }
}

///MARK: Color

extension Color {
    static func random() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}

///NOTE: 복습 코드

/*
 struct HueView: View {
     var body: some View {
         Text("Hue")
     }
 }
 */
