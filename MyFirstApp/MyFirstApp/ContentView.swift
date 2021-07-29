//
//  ContentView.swift
//  MyFirstApp
//
//  Created by marie flores on 26/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    var spots =
        [
            SurfSpot(id: 1, surfBreak:"Reef1", photos:"SkeletonBay", address:"SkeletonBay"),
            SurfSpot(id: 2, surfBreak:"Reef2", photos:"Hawai", address:"Hawai"),
            SurfSpot(id: 3, surfBreak:"Reef3", photos:"Mentawai", address:"Mentawai")
        ]
    
    var body: some View {
        NavigationView{
        List {
            ForEach(spots, id: \.self){ spot in
                NavigationLink(destination: DetailView(surfSpot: spot)) {
                    HStack {
                        Text(spot.surfBreak)
                        Text(spot.address)
                        Spacer()
                        Image(spot.photos)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 100, height: 80)
                            .clipped()
                        }
                    .padding()
                }
            }
        }
        .navigationTitle("WannaSurf?")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
