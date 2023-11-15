//
//  MovieView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/14.
//

import SwiftUI

struct MovieView: View {
    
    @State private var isPresented = false
    
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
                Button("SHOW Tamagotchi") {
                    isPresented.toggle() // 화면 전달만을 위한 트리거 역할
                }
            }
            VStack {
                Spacer()
                HStack(spacing: 20) {
                    BirdView()
                    BirdView()
                    BirdView()
                }
            }
        }
        .fullScreenCover(isPresented: $isPresented) {
            TamagotchiView()
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}

//MARK: BirdView

struct BirdView: View {
    var body: some View {
        Image("dummy-bird")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}


/* 상중하 연습
 
 📌
 
 struct MovieView: View {
     
     @State private var isPresented = false
     
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
                 Button("SHOW") {
                     isPresented.toggle() // 화면 전달만을 위한 트리거 역할
                 }
             }
             VStack {
                 Spacer()
                 HStack {
                     Image("dummy-bird")
                         .resizable()
                         .frame(width: 100, height: 100)
                         .clipShape(Circle())
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
         .fullScreenCover(isPresented: $isPresented) {
             TamagotchiView()
         }
     }
 }
 
 📌
 
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
