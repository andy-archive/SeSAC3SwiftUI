//
//  PosterView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/15.
//

import SwiftUI

struct PosterView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack {
                ForEach(0..<50) { item in
                    AsyncImageView()
                        .frame(width: 100, height: 100) // 📌 왜 각주처리 하면 실패가 뜰까? -> 네트워크 과호출 방지 (실패 시 전후 사진 볼 것)
                        .onTapGesture { // 📌 print가 왜 되는 걸까? -> @escaping -> 비어 있는 함수 공간
                            print(#function)
                            isPresented.toggle()
                        }
                }
            }
//            .frame(maxWidth: .infinity)
        }
        .background(.gray.opacity(0.3))
        .sheet(isPresented: $isPresented) {
            CategoryView()
        }
//        .contentMargins(50, for: .scrollIndicators) // Xcode 15.0+
    }
}

struct AsyncImageView: View {
    
    let url = URL(string: "https://picsum.photos/100")
    
    var body: some View {
        AsyncImage(url: url) { data in
            switch data {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            case .failure(_):
                Image(systemName: "photo")
            @unknown default:
                Image(systemName: "photo")
            }
        }
    }
}

struct PosterView_Previews: PreviewProvider {
    static var previews: some View {
        PosterView()
    }
}

/*
 ScrollView
 LazyVStack vs VStack
 List
 AsyncImage (iOS 15+)
 */

/*
 📌 LazyVStack vs VStack
 
 컨텐츠가 몇 개인가?
 얼마나 스크롤을 하는가?
 어떤 데이터를 사용하는가?
 
 스크롤의 정도가 심할 경우
 
 List를 쓸 경우 메모리 걱정을 안해도
 
 */

/*
 📌 AsyncImage(url:, content:, placeholder:)
 
 struct AsyncImageView: View {
     
     let url = URL(string: "https://picsum.photos/200")
     
     var body: some View {
 //        AsyncImage(url: url)
         AsyncImage(url: url) { image in
             image
                 .scaledToFit()
                 .frame(width: 150, height: 150)
                 
                 .clipShape(RoundedRectangle(cornerRadius: 20))
                 //.clipShape(Circle())
                 //.cornerRadius(20) // will be Dreprecated
                 // 디버깅 //.background(.yellow)
         } placeholder: {
             //1. //Image(systemName: "photo")
             
             //2.
             ProgressView()
         }
     }
 }
 */
