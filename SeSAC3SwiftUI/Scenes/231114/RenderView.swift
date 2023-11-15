//
//  RenderView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/13.
//

import SwiftUI

struct RenderView: View {
    
    @State var age = 10
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.red, .blue, .yellow]), startPoint: .leading, endPoint: .trailing)
                        )
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            RadialGradient(gradient: Gradient(colors: [.green, .red, .yellow]), center: .topLeading, startRadius: 20, endRadius: 300)
                        )
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            AngularGradient(colors: [.yellow, .blue], center: .leading, angle: .degrees(0))
                        )
                }
                .frame(width: .infinity, height: 100)
                NavigationLink("Push") {
                    MenuView()
                }
                Text("Andy: \(Int.random(in: 1...99))")
                NoahView(name: "Noah")
                ssabooView
                Text("Joey: \(Int.random(in: 1...99))")
                Button("CLICK") {
                    print("CLICKED")
                    age = Int.random(in: 1...100)
                }
            }
            .navigationTitle("TITLE")
            // 가장 바깥 영역이 아닌 NavigationView 끝에 위치해야 함
        }
    }
    
    var ssabooView: some View {
        Text("Ssaboo: \(Int.random(in: 1...99))")
    }
}

struct RenderView_Previews: PreviewProvider {
    static var previews: some View {
        RenderView()
    }
}

//MARK: Custom
struct NoahView: View {
    var name: String
    
    var body: some View {
        Text("\(name): \(Int.random(in: 1...99))")
    }
}
