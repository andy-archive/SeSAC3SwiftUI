//
//  ChartView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/17.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    let movieList: [Movie]
    
    var body: some View {
        VStack {
            Text("CHART")
            Chart(movieList, id: \.self) { item in
                BarMark( //LineMark //RectangleMark // AreaMark
                    x: .value("Genre", item.name),
                    y: .value("Watched Count", item.count)
                )
                .foregroundStyle(Color.random())
            }
            .frame(height: 200)
        }
        .padding()
    }
}

/* 데이터가 없으므로 Preview에 임의로 데이터 넣기 */
struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(movieList: [
            Movie(name: "A"), Movie(name: "Aab"),
            Movie(name: "Avengers"), Movie(name: "Avengers"),
            Movie(name: "Harry Potter"), Movie(name: "Eternal Sunshine"),
            Movie(name: "Shrek"), Movie(name: "Eternal Sunshine"),
            Movie(name: "Mission Impossible"),
        ])
    }
}
