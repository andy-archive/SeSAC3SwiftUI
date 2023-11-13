//
//  MenuView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/13.
//

import SwiftUI

struct MenuView: View {
    
    var cardProperty: some View {
        HStack(spacing: 20) {
            CardView(image: "star", text: "Andy")
        }
    }
    
    var body: some View {
        VStack{
            Spacer()
            HStack(spacing: 20) {
                CardView(image: "star", text: "Andy")
                CardView(image: "sun.max", text: "Noah")
                CardView(image: "moon", text: "ssaboo")
            }
            List {
                Section("My Info") {
                    Text("Securities")
                        .asPointBorderText() //.modifier(PointBorderText())
                    Text("My Credits")
                    Text("Events")
                }
                Section("Properties") {
                    Text("Bank")
                        .modifier(PointBorderText())
                    Text("Stock")
                }
            }
            .listStyle(.sidebar)
            Spacer()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct CardView: View {
    let image: String
    let text: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Image(systemName: image)
                .background(.red.opacity(0.3))
            Text(text)
                .background(.blue.opacity(0.1))
                .underline()
                .strikethrough()
        }
        .padding()
        .background(.yellow.opacity(0.2))
    }
}

// 어떤 View가 들어오더라도 modifier 적용하기
struct PointBorderText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(10)
            .foregroundStyle(.white)
            .background(.purple)
//            .clipShape(.capsule) // iOS 17.0+
    }
}

// modifier에서 파라미터가 아닌 View의 함수로 변환하기
extension View {
    func asPointBorderText() -> some View {
        modifier(PointBorderText())
    }
}
