//
//  ChartView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/17.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    let movieList: [Movie]
    
    @ViewBuilder
    var chartTitle: some View {
        /* 기존 방식 */
        //Text(colorScheme == .dark ? "DARK CHART" : "LIGHT CHART")
        
        /* @ViewBuilder를 통한 해결
         ERROR: Function declares an opaque return type, but has no return statements in its body from which to infer an underlying type
         */
        if colorScheme == .dark {
            HStack {
                Image(systemName: "moon.fill")
                Text("DARK CHART")
            }
        } else {
            HStack {
                Image(systemName: "sun.max.fill")
                Text("LIGHT CHART")
            }
        }
    }
    
    var body: some View {
        VStack {
            chartTitle
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
