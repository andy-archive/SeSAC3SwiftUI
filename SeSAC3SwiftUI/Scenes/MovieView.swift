//
//  MovieView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/14.
//

import SwiftUI

struct MovieView: View {
    var body: some View {
        ZStack {
            Image("dummy-forest-fall")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Image("dummy-bird")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .border(.blue, width: 5)
                Text("zzzz")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .bold()
            }
            VStack {
                Spacer()
                HStack {
                    Image("dummy-bird")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .border(.blue, width: 5)
                    Image("dummy-bird")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .border(.blue, width: 5)
                    Image("dummy-bird")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .border(.blue, width: 5)
                }
            }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}


/* 상중하 연습
 struct MovieView: View {
     var body: some View {
         ZStack {
             Image("dummy-forest-fall")
                 .resizable()
                 .ignoresSafeArea()
             VStack(spacing: 20) {
                 Image("dummy-bird")
                     .resizable()
                     .frame(width: 100, height: 100)
                     .border(.blue, width: 5)
                 Text("zzzz")
                     .font(.largeTitle)
                     .foregroundColor(.black)
                     .bold()
                 Spacer()
                 HStack {
                     Circle()
                     Rectangle()
                         .fill(.blue)
                     RoundedRectangle(cornerRadius: 50)
                         .fill(.yellow)
                 }
                 HStack {
                     Image("dummy-bird")
                         .resizable()
                         .frame(width: 100, height: 100)
                         .border(.blue, width: 5)
                     Image("dummy-bird")
                         .resizable()
                         .frame(width: 100, height: 100)
                         .border(.blue, width: 5)
                     Image("dummy-bird")
                         .resizable()
                         .frame(width: 100, height: 100)
                         .border(.blue, width: 5)
                 }
             }
         }
     }
 }
 */
