//
//  ContentView.swift
//  MyFirstApp
//
//  Created by marie flores on 26/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    init() {

        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(red: 99/255, green: 173/255, blue: 255/255, alpha: 1.0)]

    }
    
    var spots =
        [
            SurfSpot(id: 1, name:"Pipeline", photos:"SkeletonBay", address:"SkeletonBay",type: "ReefBreak"),
            SurfSpot(id: 2, name:"Supertubes", photos:"Hawai", address:"Hawai",type: "PointBreak"),
            SurfSpot(id: 3, name:"Pipeline2", photos:"Mentawai", address:"Mentawai", type: "BeachBreak")
        ]
    
    var body: some View {
        NavigationView{

        List {
            ForEach(spots, id: \.self){ spot in
                NavigationLink(destination: DetailView(surfSpot: spot)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(spot.name)
                                .font(.headline)
                            Text(spot.address)
                                    .font(.subheadline)
                        }
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
