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
    }
    
    @State private var isFull = false
    @State private var isSheet = false
    
    var body: some View {
        NavigationView {
            HStack(spacing: 20.0) {
                Button("Full") {
                    isFull.toggle()
                }
                Button("Sheet") {
                    isSheet = true
                }
                NavigationLink("Push") {
                    TamagotchiView()
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
