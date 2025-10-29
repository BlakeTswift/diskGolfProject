//
//  ScoreView.swift
//  diskGolfProject
//
//  Created by Trytten, Blake - Student on 10/23/25.
//

import SwiftUI

struct ScoreView: View {
    
    @Binding var names: [String]
    
    
    @State private var scores: [Int] = []
    
    @State private var recentScore = 0
    
    @State var recentname = ""
    
    @State var done: Bool = false
    
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea(edges: .all)
            VStack {
                Rectangle().fill(Color.orange)
                    .frame(width: 700, height: 100)
                    .ignoresSafeArea(edges: .all)
                    .padding()
                    .overlay{
                        Text("Score")
                            .font(.system(size: 70))
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                            .frame(width: 250)
                        
                    }
                Spacer()
                
                VStack {
                    if names.count != 0 {
                    HStack {
                        Text("Name:")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                            .padding(.trailing,140)
                            .frame(width: 350)
                        Rectangle()
                            .frame(width: 5, height: 140)
                            .border(Color.white, width: 5)
                        Text("Score:")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                            .padding(.leading,30)
                            .frame(width: 250)
                        
                    }
                    .frame(width: 600, height: 100)
                    .padding(20)
                    .border(Color.white, width: 5)
                    .background(.purple)
                    
                    
                        ScrollView {
                            ForEach (0..<names.count, id: \.self) { index in
                                
                                PlayerCard(name: names[index], index: index, done: done, recentScore: recentScore, scores: $scores, names: $names)
                            }
                        }
                        .background(.orange)
                        
                    }
                    
                    
                }
              
                
                if names.count > 0 && done == false{
                    HStack {
                        
                        Button {
                            done = true
                        }
                        label:{
                            ZStack {
                                Capsule()
                                    .fill(Color.green)
                                    .frame(width: 200, height: 100)
                                Text("Done?")
                                    .font(.system(size: 50))
                                    .fontWeight(.bold)
                                    .fontDesign(.rounded)
                                    .foregroundColor(.white)
                            }
                        }
                        
                        
                    }
                }
                else if names.count > 0 && done == true{
                    HStack {
                    Button {
                        done = false
                    }
                        label:{
                            Capsule()
                                .fill(Color.cyan)
                                .frame(width: 150, height: 100)
                                .overlay{
                                    Text("Edit")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 60))
                                        .fontWeight(.black)
                                }
                        }
                    }
                }
                Spacer()
                if done == false {
                Rectangle()
                    .fill(.blue)
                    .frame(width: .infinity, height: 225)
                    .overlay{
                        HStack {
                            TextField("Insert Name", text: $recentname)
                                .font(.system(size: 30))
                                .foregroundStyle(.black)
                                .textFieldStyle(.roundedBorder)
                                .padding(.horizontal, 20)
                            Button {
                                names.append(recentname)
                                scores.append(recentScore)
                            }label: {
                                Circle()
                                    .fill(Color.green)
                                    .frame(width: 100)
                                    .padding(10)
                                    .overlay{
                                        Image(systemName: "checkmark")
                                            .foregroundStyle(.white)
                                            .font(.system(size: 50))
                                            .fontWeight(.black)
                                        
                                    }
                                
                            }
                        }
                    }
                    }
                
            }
            
        }
        
    }
    
}

struct PlayerCard: View {
    var name: String
    var index: Int
    var done: Bool
    @State var recentScore: Int
    @Binding var scores: [Int]
    @Binding var names: [String]
    var body: some View {
        ZStack {
            HStack {
                Text("\(name)")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundColor(.white)
                // .offset(x: -180)
                    .frame(width: 360, alignment: .leading)
                // .border(Color.white, width: 5)
                
                
                TextField("#", value: $scores[index], format: .number)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundColor(ScoreColor(scores[index]))
                    .frame(width: 250)
                // .offset(x: 450)
                // .border(Color.white, width: 5)
                    .padding(.leading, 20)
                    .disabled(!done)
                    .onSubmit {
                        
                        
                        var players: [Player] = []
                        for i in 0..<scores.count{
                            players.append(Player.init(name: names[i], score: scores[i]))
                        }
                        let rankedPlayers = players.sorted(by: {$0.score < $1.score})
                        let rankedScores = scores.sorted(by:{$0 < $1})
                        
                        scores[index] = recentScore
                        
                        names = rankedPlayers.map({$0.name})
                        scores = rankedScores.map({$0})
                        
                        
                    }
                
                
                
            }
            .frame(width: 600, height: 100)
            .padding(20)
            .border(Color.white, width: 5)
            .background(.purple)
            .opacity(done ? 1 : 0.8)
            
            
            
            
            
            
            
            Rectangle()
                .frame(width: 5, height: 140)
                .border(Color.white, width: 5)
                .offset(x: 55)
        }
    }
}
func ScoreColor(_ score: Int) -> Color {
    if score > 12 {
        return .red
    } else if score > 6 {
        return .orange
    } else if score > 3 {
        return .yellow
    } else if score == 0 {
        return .white
    } else {
        return .green
    }
}
//@ViewBuilder
//func playerCard(name: String,recentScore: Int,scores: [Int]) -> some View {
//}

#Preview {
    @Previewable @State var names: [String] = []
    ScoreView(names: $names)
}
