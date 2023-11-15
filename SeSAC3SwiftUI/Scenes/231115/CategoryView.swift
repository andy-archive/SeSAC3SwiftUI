//
//  CategoryView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/15.
//

import SwiftUI

struct Category: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

struct CategoryView: View {
    
    let category = [
        Category(name: "스릴러", count: 10),
        Category(name: "액션", count: 14),
        Category(name: "SF", count: 1092),
        Category(name: "로맨스", count: 201),
        Category(name: "애니메이션", count: 42),
        Category(name: "SF", count: 92),
        Category(name: "SF", count: 213),
    ]
    
    var body: some View {
        VStack {
            ForEach(category, id: \.id) { item in
                Text("\(item.name), \(item.count) 안녕하세요")
                    .font(.largeTitle)
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}

/*
 ForEach
 - ..<
 - Swift KeyPath \.
 - id: KeyPath
 - Hashable
 */
