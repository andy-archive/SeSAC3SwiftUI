//
//  StartView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/15.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("HOME")
                }
            CategoryView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("NOTE")
                }
            PosterView()
                .tabItem {
                    Image(systemName: "star")
                    Text("FAVORITES")
                }
            TamagotchiView()
                .tabItem {
                    Image(systemName: "person")
                    Text("PROFILE")
                }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
