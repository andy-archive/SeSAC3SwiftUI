//
//  NavigationLazyView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/16.
//

import SwiftUI

struct NavigationLazyView<T: View>: View {
    
    init(build: @autoclosure @escaping () -> T) {
        self.build = build
    }
    
    var body: some View {
        build()
    }
    
    let build: () -> T
}

//struct NavigationLazyView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationLazyView()
//    }
//}

/* 📌 body 안에 넣어 둠으로써 우회하기 (문제점 -> 너무 많이 생길 수 있음)
 
 struct NavigationLazyView: View {
     var body: some View {
         TamagotchiView() // 📌 body 안에 넣어 둠으로써 우회하기
     }
 }

 struct NavigationLazyView2: View {
     var body: some View {
         PosterView() // 📌 body 안에 넣어 둠으로써 우회하기 (문제점 -> 너무 많이 생길 수 있음)
     }
 }
 
 */
