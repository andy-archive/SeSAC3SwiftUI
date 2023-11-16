//
//  TransitionView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/15.
//

import SwiftUI

/*
 버튼을 클릭해서 화면 Dismiss / Pop
 화면 전환 시 데이터 전달
 화면 전환 시 분기 처리
 */

struct TransitionView: View {
    
    init() {
        print("TransitionView init")
        print("왜 여러 번 프린트 되지...")
        print()
    }
    
    @State private var isFull = false
    @State private var isSheet = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 50.0) {
                Button("Full") {
                    isFull.toggle()
                }
                Button("Sheet") {
                    isSheet = true
                }
                NavigationLink("Push TamagotchiView") {
                    NavigationLazyView(build: TamagotchiView())
                }
                NavigationLink("Push PosterView") {
                    NavigationLazyView(build: PosterView())
                }
            }
            .sheet(
                isPresented: $isSheet,
                content: {
                TamagotchiView()
            })
            .fullScreenCover(
                isPresented: $isFull,
                content: {
                TamagotchiView()
            })
        }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
