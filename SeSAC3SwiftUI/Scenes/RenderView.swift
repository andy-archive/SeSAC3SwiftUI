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
        VStack(alignment: .leading, spacing: 20) {
            Text("Andy: \(Int.random(in: 1...99))")
            NoahView(name: "Noah")
            ssaboo
            Text("Joey: \(Int.random(in: 1...99))")
            Button("CLICK") {
                print("CLICKED")
                age = Int.random(in: 1...100)
            }
        }
    }
    
    var ssaboo: some View {
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
