//
//  SearchView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/16.
//

import SwiftUI

/* Movie 모델 */
struct Movie: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let color = Color.random()
}

/* 새로운 SearchView 231116 1400 */
struct SearchView: View {

    @State private var query = ""

    var filteredMovieList: [Movie] {
        return query.isEmpty ? movieList : movieList.filter { movie in
            movie.name.contains(query)
        }
    }

    let movieList = [
        Movie(name: "A"), Movie(name: "Aab"),
        Movie(name: "Avengers"), Movie(name: "Avengers"),
        Movie(name: "Harry Potter"), Movie(name: "Eternal Sunshine"),
        Movie(name: "Shrek"), Movie(name: "Eternal Sunshine"),
        Movie(name: "Mission Impossible"),
    ]

    var body: some View {

        NavigationStack {
            List { // LazyVStack(alignment: .leading) {
                ForEach(filteredMovieList, id: \.self) { item in // \.id or \.self를 통한 고유성 판단
                    NavigationLink(value: item) {
                        HStack {
                            Circle()
                                .foregroundStyle(item.color)
                            Text("\(item.name)")
                        }
                        .frame(height: 60)
                    }
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) { // .topBarTrailing (Latest)
                    Button {
                        print("PLUS BUTTON CLICKED")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItemGroup(placement: .navigationBarLeading) { // .topBarLeading (Latest)
                    Button {
                        print("MAP Button CLICKED")
                    } label: {
                        Image(systemName: "map")
                    }
                }
            }
            .navigationDestination(for: Movie.self) { item in
                SearchDetailView(movie: item)
            
            }
        }
        .searchable(text: $query, placement: .navigationBarDrawer, prompt: "Insert you want to search")
        .onSubmit(of: .search) {
            print("SEARCHED")
        }
    }
}

/*
 2023-11-16 SwiftUI의 원리 연습
 View의 값이 바뀌면 화면이 업로드 된다
 */
//struct SearchView: View {
//
//    @State var randomNum = 0
//
//    init(randomNum: Int = Int.random(in: 1...100)) {
//        print("\(String(describing: self)) init")
////        self.randomNum = randomNum
////        print("\(self) init")
////        print("\(randomNum)")
//    }
//
//    var body: some View {
//        VStack(spacing: 20) {
//            HueView() // new struct
//            jackView // struct property
//            kokoView()// struct method
//            Text("Bran") // Text struct
//                .background(Color.random())
//
//            Text("Andy \(randomNum)")
//                .background(Color.random())
//
//            Button("클릭") { // 클릭 시 매번 뷰가 새로 그려짐
//                //randomNum = Int.random(in: 1...100)
//                print("SearchView Button CLICKED")
////                    .background(Color.random()
//            }
//        }
//    }
//
//    var jackView: some View {
//        Text("Jack")
//            .background(Color.random())
//    }
//
//    func kokoView() -> some View {
//        Text("Koko")
//            .background(Color.random())
//    }
//}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct HueView: View {
    
    // 이니셜라이저는 계속 실행됨
    init() {
        print("\(String(describing: self)) init")
    }
    
    @State var randomNum = 0
    @State var name = "Hue"
    
    // 변경되는 부분이 없어서 한번만 실행됨
    var body: some View {
        VStack {
            Text(name)
                .background(Color.random())
            Button("클릭") { // 클릭 시 매번 뷰가 새로 그려짐
                name = "\(Int.random(in: 1...1000))" // 값을 바꿨으니 업데이트 됨 // "Hue"
//                print("============")
//                print(randomNum)
//                randomNum = Int.random(in: 1...1000)
//                print(randomNum)
            }
        }
    }
}

struct SearchDetailView: View {

    let movie: Movie

    var body: some View {
        VStack {
            Text(movie.name)
                .font(.title)
                .padding(20)
            Button("TITLE & ACTION") {
                print("\(String(describing: self))")
            }
            Button {
                print("ACTION & LABEL")
            } label: {
                HStack {
                    Circle()
                        .foregroundStyle(Color.random())
                    Text("ACTION & LABEL")
                        .navigationTitle("Search")
                }
                .frame(width: 140)
            }

        }
    }
}

/* NavigationView → NavigationLink(destination) & Detail
 NavigationView {
     List { // LazyVStack(alignment: .leading) {
         ForEach(filteredMovieList, id: \.self) { item in // \.id or \.self를 통한 고유성 판단
             
             NavigationLink {
                 SearchDetailView(movie: item)
             } label: {
                 HStack {
                     Circle()
                         .foregroundStyle(item.color)
                     Text("\(item.name)")
                 }
                 .frame(height: 60)
             }
         }
     }
 
 */

/*
 HStack {
     Circle()
         .foregroundStyle(item.color)
     Text("\(item.name)")
         .navigationTitle("Search")
     Spacer()
     Button {
         print("CLICKED")
     } label: {
         HStack {
             Text("CLICK")
             Image(systemName: "chevron.right")
         }
     }
 }
 .frame(height: 60)
 */

/*
 let movie = ["A", "Aab", "Andy", "Noah", "Boribob", "Ssaboo", "Ironman", "Harry Potter", "Iris"]
 */

/* 새로운 SearchView 1 231116 1230*/
// import SwiftUI
//
//
// struct SearchView: View {
//
//     @State private var query = "QUERY"
//
//     var body: some View {
//         NavigationView {
//             Text("abcd")
//                 .navigationTitle("Search")
//         }
//         .searchable(text: $query, placement: .navigationBarDrawer, prompt: "Insert you want to search")
//         .onSubmit(of: .search) {
//             print("SEARCHED")
//         }
//     }
// }

/* 기존 SearchView */
//struct SearchView: View {
//
//    @State var randomNum = 0
//
//    init(randomNum: Int = Int.random(in: 1...100)) {
//        self.randomNum = randomNum
//        print("\(self) init")
//        print("\(randomNum)")
//    }
//
//    var body: some View {
//        VStack(spacing: 20) {
//            HueView() // new struct
//            jackView // struct property
//            kokoView()// struct method
//            Text("Bran") // Text struct
//                .background(Color.random())
//
//            Text("Andy \(randomNum)")
//                .background(Color.random())
//
//            Button("클릭") { // 클릭 시 매번 뷰가 새로 그려짐
//                randomNum = Int.random(in: 1...100)
//            }
//        }
//    }
//
//    var jackView: some View {
//        Text("Jack")
//            .background(Color.random())
//    }
//
//    func kokoView() -> some View {
//        Text("Koko")
//            .background(Color.random())
//    }
//}


///MARK: Color

extension Color {
    static func random() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}

///NOTE: 복습 코드

/*
 struct HueView: View {
     var body: some View {
         Text("Hue")
     }
 }
 */
