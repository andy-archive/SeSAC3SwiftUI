//
//  GridView.swift
//  SeSAC3SwiftUI
//
//  Created by Taekwon Lee on 2023/11/17.
//

import SwiftUI

struct GridView: View {
    
    @Binding var movieList: [Movie]
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        
        let movie: [Movie] = [
            Movie(name: "A"), Movie(name: "Aab"),
            Movie(name: "Avengers"), Movie(name: "Avengers"),
            Movie(name: "Harry Potter"), Movie(name: "Eternal Sunshine"),
            Movie(name: "Shrek"), Movie(name: "Eternal Sunshine"),
            Movie(name: "Mission Impossible"),]
        
        GridView(movieList: .constant(movie))
    }
}
