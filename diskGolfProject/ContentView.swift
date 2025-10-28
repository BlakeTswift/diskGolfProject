//
//  ContentView.swift
//  diskGolfProject
//
//  Created by Trytten, Blake - Student on 10/23/25.
//

import SwiftUI
import MapKit

struct Player {
    var name: String
    var score: Int = 0
}
struct ContentView: View {
    
    @State var hole = 1
    @State var names: [String] = []
    @State var players: [Player] = [Player(name: "Player 1",score: 0)]

    
    var body: some View {
        TabView {
            ScoreView(names: $names)
            MapView(hole: $hole, names: $names)
            
            HoleView(hole: $hole)
            
        }
        .tabViewStyle(PageTabViewStyle())
            .ignoresSafeArea(.all)
    }
}
#Preview {
    ContentView()
}
