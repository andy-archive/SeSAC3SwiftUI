//
//  TamagotchiView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/14.
//

import SwiftUI

struct TamagotchiView: View {

    @State private var nickname = "Andy"
    @State private var waterDropCount = 0
    @State private var riceCount = 0

    @State private var isClicked = false
    @State private var nameTextField = ""
    
    @State private var isPresented = false
    @Environment(\.dismiss) var dismiss

    // body -> Computed Properties
    // get으로 되어 있다
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .padding(10)
                    Text("뒤로 가기")
                }
                Spacer()
            }
            TextField("insert name", text: $nameTextField)
                .padding()
            Toggle("SWITCH", isOn: $isClicked)
                .padding()
            Text("Hello, \(nameTextField)!")
                .foregroundStyle(.background)
                .font(.title)
                .padding(20)
                .background(.blue)
            CountView(title: "💧", count: $waterDropCount)
            CountView(title: "🌾", count: $riceCount)
        }
    }
}

struct CountView: View {
    var title: String
    @Binding var count: Int

    var body: some View {
        Text("\(title): \(count)")
            .font(.title2)
        Button("Feed \(count)") {
            count += 1
        }
    }
}

/*
 Button("Feed Rice") {
 riceCount += 1
 }
 */

/* 📌 @Binding 실습
 struct TamagotchiView: View {

     @State private var nickname = "Andy"
     @State private var waterDropCount = 0
     @State private var riceCount = 0

     @State private var isClicked = false
     @State private var nameTextField = ""

     // body -> Computed Properties
     // get으로 되어 있다
     var body: some View {
         VStack(spacing: 20) {
             TextField("insert name", text: $nameTextField)
                 .padding()
             Toggle("SWITCH", isOn: $isClicked)
                 .padding()
             Text("Hello, \(nameTextField)!")
                 .foregroundStyle(.background)
                 .font(.title)
                 .padding(20)
                 .background(.blue)
             CountView(title: "💧", count: $waterDropCount)
             CountView(title: "🌾", count: $riceCount)
         }
     }
 }

 struct CountView: View {
     var title: String
     @Binding var count: Int

     var body: some View {
         Text("\(title): \(count)")
             .font(.title2)
         Button("Feed \(count)") {
             count += 1
         }
     }
 }

 */

/*
 Text("💧 \(waterDropCount)")
 .font(.title2)

 Text("Hello, \(riceCount)!")
 .font(.title2)
 */

struct TamagotchiView_Previews: PreviewProvider {
    static var previews: some View {
        TamagotchiView()
    }
}

/*
 📌 앱에서 UI는 Data에 의존하여 자신의 상태를 결정한다
 */


/* struct 복습
 */

struct User {

    // Stored Properties
    var nickname = "Callie"

    // Computed Properties
    var introduce: String {
        return "Hello I am \(nickname)"

        /* mutating을 붙여 해결
         mutating get {
             nickname = "Joey"
             return "Hello I am \(nickname)"
         }
         */
    }

    mutating func changeNickname() {
        nickname = "Joey"
        ///ERROR: Cannot assign to property: 'self' is immutable
        /// func -> mutating func
    }
}

/*
 struct TamagotchiView: View {

     @State private var nickname = "Andy"
     @State private var count = 0

     // body -> Computed Properties
     // get으로 되어 있다
     var body: some View {
         VStack {
             Text("Hello, \(nickname)!")
                 .background(.blue)
                 .foregroundStyle(.white)
                 .font(.title)
             Button("Number of WaterDrop") {
                 nickname = "Noah"
                 // 1) var nickname = "Andy"
                 /// ERROR: Cannot assign to property: 'nickname' is a 'let' constant

                 // 2) let nickname = "Andy"
                 /// ERROR: Cannot assign to property: 'self' is immutable
             }
         }
     }
 }
 */


/*
 struct TamagotchiView: View {

     @State private var nickname = "Andy"
     @State private var waterDropCount = 0
     @State private var riceCount = 0

     // body -> Computed Properties
     // get으로 되어 있다
     var body: some View {
         VStack(spacing: 20) {
             Text("Hello, \(nickname)!")
                 .foregroundStyle(.background)
                 .font(.title)
                 .padding(20)
                 .background(.blue)
             CountView(title: "💧", count: $waterDropCount)
             Button("Feed WaterDrop") {
                 waterDropCount += 1
             }
             .padding(50)
             .background(.yellow)
             CountView(title: "🌾", count: $riceCount)
             Button {
                 riceCount += 1
             } label: {
                 Text("Feed Rice")
                     .padding(50)
                     .background(.green)
             }

         }
     }
 }

 struct CountView: View {
     var title: String
     @Binding var count: Int

     var body: some View {
         Text("\(title): \(count)")
             .font(.title2)
         Button("Feed \(count)") {
             count += 1
         }
     }
 }
 */
