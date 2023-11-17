//
//  GridView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/17.
//

import SwiftUI

struct GridView: View {
    
    @Binding var movieList: [Movie]
    
    @State private var dummy = Array(1...100).map { "Movie\n#\($0)" }
    
    private let gridItem = GridItem(.fixed(200))
    private let layout = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        
//        /* GridItem parameters */
//    GridItem(.fixed(100)),
//    GridItem(.flexible(minimum: 100, maximum: 250)),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout, alignment: .center, spacing: 30) {
                ForEach(dummy, id: \.self) { item in
                    ZStack {
                        Color.random().opacity(0.2)
                        Text(item)
                            .bold()
                            .font(.title3)
                    }
                }
            }
            .padding(20)
        }
        /* 화면이 떴을 때 함수 실행 */
        .onAppear {
            dummy.insert("INSERTED", at: 0)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        
        let movie: [Movie] = [
            Movie(name: "A"), Movie(name: "Aab"),
            Movie(name: "Avengers"), Movie(name: "Avengers"),
            Movie(name: "Harry Potter"), Movie(name: "Eternal Sunshine"),
            Movie(name: "Shrek"), Movie(name: "Eternal Sunshine"),
            Movie(name: "Mission Impossible"),]
        
        GridView(movieList: .constant(movie))
    }
}
