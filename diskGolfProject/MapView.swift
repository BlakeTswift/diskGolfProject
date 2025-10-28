//
//  MapView.swift
//  diskGolfProject
//
//  Created by Trytten, Blake - Student on 10/23/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    @Binding var hole: Int
    
    @Binding var names: [String]
    
    let Hole1Tee = CLLocationCoordinate2D(latitude: 40.5564509, longitude: -105.1390831)
    
    let Hole1Base = CLLocationCoordinate2D(latitude: 40.5565559, longitude: -105.1379600)
    
    let Hole2Tee = CLLocationCoordinate2D(latitude: 40.5566772, longitude: -105.1375496)
    
    let Hole2Base = CLLocationCoordinate2D(latitude: 40.5569357, longitude: -105.1367495)
    
    let Hole3Tee = CLLocationCoordinate2D(latitude: 40.5571974, longitude: -105.1357486)
    
    let Hole3Base = CLLocationCoordinate2D(latitude: 40.5570549, longitude: -105.1347512)
    
    let Hole4Tee = CLLocationCoordinate2D(latitude: 40.55753, longitude: -105.13584)
    
    let Hole4Base = CLLocationCoordinate2D(latitude: 40.55746, longitude: -105.13697)
    
    let Hole5Tee = CLLocationCoordinate2D(latitude: 40.55776, longitude: -105.13708)
    
    let Hole5Base = CLLocationCoordinate2D(latitude: 40.55788, longitude: -105.13545)
    
    let Hole6Tee = CLLocationCoordinate2D(latitude: 40.55770, longitude: -105.13526)
    
    let Hole6Base = CLLocationCoordinate2D(latitude: 40.55753, longitude: -105.13420)
    
    let Hole7Tee = CLLocationCoordinate2D(latitude: 40.55781, longitude: -105.13455)
    
    let Hole7Base = CLLocationCoordinate2D(latitude: 40.55838, longitude: -105.13588)
    
    let Hole8Tee = CLLocationCoordinate2D(latitude: 40.55834, longitude: -105.13627)
    
    let Hole8Base = CLLocationCoordinate2D(latitude: 40.55845, longitude: -105.13754)
    
    let Hole9Tee = CLLocationCoordinate2D(latitude: 40.55882, longitude: -105.13707)
    
    let Hole9Base = CLLocationCoordinate2D(latitude: 40.55858, longitude: -105.13565)
    
    let Hole10Tee = CLLocationCoordinate2D(latitude: 40.558376, longitude: -105.135466)
    
    let Hole10Base = CLLocationCoordinate2D(latitude: 40.558763, longitude: -105.134242)
    
    let Hole11Tee = CLLocationCoordinate2D(latitude: 40.558885, longitude: -105.134107)
    
    let Hole11Base = CLLocationCoordinate2D(latitude: 40.559135, longitude: -105.134385)
    
    let Hole12Tee = CLLocationCoordinate2D(latitude: 40.559379, longitude: -105.134151)
    
    let Hole12Base = CLLocationCoordinate2D(latitude: 40.559030, longitude: -105.135471)
    
    let Hole13Tee = CLLocationCoordinate2D(latitude: 40.558914, longitude: -105.135949)
    
    let Hole13Base = CLLocationCoordinate2D(latitude: 40.559783, longitude: -105.135804)
    
    let Hole14Tee = CLLocationCoordinate2D(latitude: 40.559697, longitude: -105.135522)
    
    let Hole14Base = CLLocationCoordinate2D(latitude: 40.560467, longitude: -105.134485)
    
    let Hole15Tee = CLLocationCoordinate2D(latitude: 40.560616, longitude: -105.134974)
    
    let Hole15Base = CLLocationCoordinate2D(latitude: 40.560337 , longitude: -105.136424)
    
    let Hole16Tee = CLLocationCoordinate2D(latitude: 40.560543, longitude: -105.136820)
    
    let Hole16Base = CLLocationCoordinate2D(latitude: 40.559436, longitude: -105.137056)
    
    let Hole17Tee = CLLocationCoordinate2D(latitude: 40.558889, longitude: -105.137061)
    
    let Hole17Base = CLLocationCoordinate2D(latitude: 40.558592, longitude: -105.139183)
    
    let Hole18Tee = CLLocationCoordinate2D(latitude: 40.558345, longitude: -105.139454)
    
    let Hole18Base = CLLocationCoordinate2D(latitude: 40.557291, longitude: -105.139472)
    
    
    
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Color.green)
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea(edges: .all)
            VStack {
                Rectangle().fill(Color.orange)
                    .frame(width: 700, height: 100)
                    .ignoresSafeArea(edges: .all)
                    .padding()
                    .overlay{
                        Text("Map")
                            .font(.system(size: 70))
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                    }
                HStack {
                    
                    VStack {
                        
                        Rectangle().fill(Color.yellow)
                            .frame(width: 200, height: 225)
                            .ignoresSafeArea(edges: .all)
                            .overlay{
                                Image("compass")
                                    .resizable()
                                    .frame(width: 180, height: 200)
                                    .padding(3)
                                    .border(Color.black, width: 5)
                                
                            }
                        Rectangle().fill(Color.teal)
                            .frame(width: 200, height: .infinity)
                            .ignoresSafeArea(edges: .all)
                            .overlay {
                                
                                VStack {
                                    Text("Current Winner:")
                                        .font(.system(size: 50))
                                        .fontWeight(.semibold)
                                        .fontDesign(.rounded)
                                        .foregroundColor(.white)
                                    Text(names.first ?? "No Winner")
                                        .font(.system(size: 40))
                                        .fontWeight(.bold)
                                        .fontDesign(.rounded)
                                        .foregroundColor(.yellow)
                                        .multilineTextAlignment(.center)
                                    VStack{
                                        Text("KEY")
                                            .font(.system(size: 30))
                                            .fontWeight(.black)
                                            .fontDesign(.rounded)
                                            .foregroundColor(.white)
                                            .padding(.bottom,5)
                                        HStack{
                                            Image(systemName: "trophy.circle.fill")
                                                .foregroundStyle(.yellow)
                                                .font(.system(size: 20))
                                            
                                            Text("Pro Basket")
                                                .font(.system(size: 20))
                                                .fontWeight(.bold)
                                                .fontDesign(.rounded)
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        HStack {
                                            Image(systemName: "square.fill")
                                                .foregroundStyle(.blue)
                                                .font(.system(size: 20))
                                            Text("Tee Box")
                                                .font(.system(size: 20))
                                                .fontWeight(.bold)
                                                .fontDesign(.rounded)
                                                .foregroundColor(.white)
                                        }
                                        
                                    }
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.purple))
                                    .offset(y:200)
                                }
                            }
                        
                        
                    }
                    VStack {
                        Rectangle().fill(Color.blue)
                            .frame(width: .infinity, height: 225)
                            .ignoresSafeArea(edges: .all)
                            .overlay{
                                Text("You Are On Hole \(hole)")
                                    .font(.system(size: 70))
                                    .fontWeight(.bold)
                                    .fontDesign(.rounded)
                                    .foregroundColor(.white)
                            }
                        Map(interactionModes: []) {
                            
                            Annotation("Hole 1 Tee", coordinate:Hole1Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 1 Basket", coordinate:Hole1Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            Annotation("Hole 2 Tee", coordinate:Hole2Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 2 Basket", coordinate:Hole2Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            Annotation("Hole 3 Tee", coordinate:Hole3Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 3 Basket", coordinate:Hole3Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            
                            Annotation("Hole 4 Tee", coordinate:Hole4Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 4 Basket", coordinate:Hole4Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 5 Tee", coordinate:Hole5Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 5 Basket", coordinate:Hole5Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 6 Tee", coordinate:Hole6Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 6 Basket", coordinate:Hole6Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 7 Tee", coordinate:Hole7Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 7 Basket", coordinate:Hole7Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 8 Tee", coordinate:Hole8Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 8 Basket", coordinate:Hole8Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 9 Tee", coordinate:Hole9Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 9 Basket", coordinate:Hole9Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 10 Tee", coordinate:Hole10Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 10 Basket", coordinate:Hole10Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            
                            Annotation("Hole 11 Tee", coordinate:Hole11Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 11 Basket", coordinate:Hole11Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 12 Tee", coordinate:Hole12Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 12 Basket", coordinate:Hole12Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 13 Tee", coordinate:Hole13Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 13 Basket", coordinate:Hole13Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            
                            Annotation("Hole 14 Tee", coordinate:Hole14Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 14 Basket", coordinate:Hole14Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 15 Tee", coordinate:Hole15Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 15 Basket", coordinate:Hole15Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 16 Tee", coordinate:Hole16Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 16 Basket", coordinate:Hole16Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 17 Tee", coordinate:Hole17Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 17 Basket", coordinate:Hole17Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                                
                            }
                            
                            Annotation("Hole 18 Tee", coordinate:Hole18Tee) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                            Annotation("Hole 18 Basket", coordinate:Hole18Base) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 15))
                                    
                                
                            }
                        }
                        .mapStyle(.imagery)
                        .ignoresSafeArea(edges: .all)
                    }
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    @Previewable @State var hole = 0
    @Previewable @State var names: [String] = []
    MapView(hole: $hole, names: $names)
}
