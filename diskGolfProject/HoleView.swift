//
//  HoleView.swift
//  diskGolfProject
//
//  Created by Trytten, Blake - Student on 10/23/25.
//

import SwiftUI
import MapKit
import CoreLocation

struct HoleView: View {
    var par = 3
    var holeDistance: [Int] = [318,480,308,415,449,294,294,426,358,404,339,276,387,322,403,415,408,614,386]
    
    @Binding var hole: Int
    
    let Coordinates = Cords()
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.pink)
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea(edges: .all)
                .opacity(0.6)
            VStack {
                Rectangle().fill(Color.orange)
                    .frame(width: 700, height: 100)
                    .ignoresSafeArea(edges: .all)
                    .padding()
                    .overlay{
                        Text("Hole")
                            .font(.system(size: 70))
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                        
                    }
                Spacer()
                HStack {
                    Map(interactionModes: []) {
                        if let currentTeeCoordinate = Coordinates.TeeCords(hole: hole) {
                            Annotation("Hole \(hole) Tee", coordinate: currentTeeCoordinate) {
                                Image(systemName: "square.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                            }
                        }
                        if let currentBoxCoordinate = Coordinates.BoxCords(hole: hole) {
                            Annotation("Hole \(hole) Basket", coordinate: currentBoxCoordinate) {
                                Image(systemName: "trophy.circle.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 20))
                            }
                        }
                    }
                    .mapStyle(.imagery)
                    .ignoresSafeArea(edges: .all)
                    .frame(width: 400, height: 1000)
                    
                    VStack {
                        Spacer()
                        Button{
                            hole = 1
                        }
                        label:{
                            Circle()
                                .frame(width: 150)
                                .foregroundStyle(.yellow)
                                .overlay{
                                    Image(systemName: "arrow.trianglehead.clockwise")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 85))
                                        .fontWeight(.black)
                                        
                                }
                        }
                        .padding(50)
                    Rectangle().fill(Color.orange)
                        .frame(width: 300, height: 100)
                        .ignoresSafeArea(edges: .all)
                        .padding()
                        .overlay{
                            Text("Par: \(par)")
                                .font(.system(size: 70))
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        }
                        Rectangle().fill(Color.orange)
                            .frame(width: 300, height: 100)
                            .padding()
                            .overlay{
                                Text("Distance: \(holeDistance[hole - 1])")
                                    .font(.system(size: 40))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                            }
                        Rectangle().fill(Color.orange)
                            .frame(width: 300, height: 100)
                            .ignoresSafeArea(edges: .all)
                            .padding()
                            .overlay{
                                TextField("Hole: \(hole)", value: $hole, format: .number)
                                    .frame(width: 60, height: 06, alignment: .center)
                                    .font(.system(size: 50))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                    
                                    
                            }
                        Spacer()
                        HStack{
                            Button{
                                if hole != 1 {
                                    hole -= 1
                                }
                            }
                            label:{
                                Circle()
                                    .frame(width: 100)
                                    .foregroundStyle(.red)
                                    .overlay{
                                        Image(systemName: "arrowshape.left.fill")
                                            .foregroundStyle(.white)
                                            .font(.system(size: 60))
                                            .fontWeight(.bold)
                                        
                                    }
                            }
                            
                            Button{
                                if hole < 18 {
                                    hole += 1
                                }
                            }
                            label:{
                                Circle()
                                    .frame(width: 100)
                                    .foregroundStyle(.green)
                                    .overlay{
                                        Image(systemName: "arrowshape.right.fill")
                                            .foregroundStyle(.white)
                                            .font(.system(size: 60))
                                            .fontWeight(.bold)
                                        
                                    }
                            }
                            
                        }
                        .padding(15)
                        .background(.orange)
                        
                        Spacer()
                        }
                    .frame(width: 400, height: 1000)
                    .background(Color.red)
                    
                    
                }
            }
        }
    }
}





// Update the Cords struct to use a dictionary for better organization
struct Cords {
    // A dictionary is much cleaner than a long if/else-if statement
    let teeCoordinates: [Int: CLLocationCoordinate2D] = [
        1: CLLocationCoordinate2D(latitude: 40.5564509, longitude: -105.1390831),
        2: CLLocationCoordinate2D(latitude: 40.5566772, longitude: -105.1375496),
        3: CLLocationCoordinate2D(latitude: 40.5571974, longitude: -105.1357486),
        4: CLLocationCoordinate2D(latitude: 40.55753, longitude: -105.13584),
        5: CLLocationCoordinate2D(latitude: 40.55776, longitude: -105.13708),
        6: CLLocationCoordinate2D(latitude: 40.55770, longitude: -105.13526),
        7: CLLocationCoordinate2D(latitude: 40.55781, longitude: -105.13455),
        8: CLLocationCoordinate2D(latitude: 40.55834, longitude: -105.13627),
        9: CLLocationCoordinate2D(latitude: 40.55882, longitude: -105.13707),
        10: CLLocationCoordinate2D(latitude: 40.558376, longitude: -105.135466),
        11: CLLocationCoordinate2D(latitude: 40.558885, longitude: -105.134107),
        12: CLLocationCoordinate2D(latitude: 40.559379, longitude: -105.134151),
        13: CLLocationCoordinate2D(latitude: 40.558914, longitude: -105.135949),
        14: CLLocationCoordinate2D(latitude: 40.559697, longitude: -105.135522),
        15: CLLocationCoordinate2D(latitude: 40.560616, longitude: -105.134974),
        16: CLLocationCoordinate2D(latitude: 40.560543, longitude: -105.136820),
        17: CLLocationCoordinate2D(latitude: 40.558889, longitude: -105.137061),
        18: CLLocationCoordinate2D(latitude: 40.558345, longitude: -105.139454)
    ]
    // Dictionary for box coordinates (hole bases)
    let boxCoordinates: [Int: CLLocationCoordinate2D] = [
        1: CLLocationCoordinate2D(latitude: 40.5565559, longitude: -105.1379600),
        2: CLLocationCoordinate2D(latitude: 40.5569357, longitude: -105.1367495),
        3: CLLocationCoordinate2D(latitude: 40.5570549, longitude: -105.1347512),
        4: CLLocationCoordinate2D(latitude: 40.55746, longitude: -105.13697),
        5: CLLocationCoordinate2D(latitude: 40.55788, longitude: -105.13545),
        6: CLLocationCoordinate2D(latitude: 40.55753, longitude: -105.13420),
        7: CLLocationCoordinate2D(latitude: 40.55838, longitude: -105.13588),
        8: CLLocationCoordinate2D(latitude: 40.55845, longitude: -105.13754),
        9: CLLocationCoordinate2D(latitude: 40.55858, longitude: -105.13565),
        10: CLLocationCoordinate2D(latitude: 40.558763, longitude: -105.134242),
        11: CLLocationCoordinate2D(latitude: 40.559135, longitude: -105.134385),
        12: CLLocationCoordinate2D(latitude: 40.559030, longitude: -105.135471),
        13: CLLocationCoordinate2D(latitude: 40.559783, longitude: -105.135804),
        14: CLLocationCoordinate2D(latitude: 40.560467, longitude: -105.134485),
        15: CLLocationCoordinate2D(latitude: 40.560337, longitude: -105.136424),
        16: CLLocationCoordinate2D(latitude: 40.559436, longitude: -105.137056),
        17: CLLocationCoordinate2D(latitude: 40.558592, longitude: -105.139183),
        18: CLLocationCoordinate2D(latitude: 40.557291, longitude: -105.139472)
    ]
    
    // The function now returns the coordinate from the dictionary or `nil` if not found
    func TeeCords(hole: Int) -> CLLocationCoordinate2D? {
        return teeCoordinates[hole]
    }
    // Function to get the box coordinates
    func BoxCords(hole: Int) -> CLLocationCoordinate2D? {
        return boxCoordinates[hole]
    }
}



#Preview {
    @Previewable @State var hole = 1
    HoleView(hole:$hole)
}
