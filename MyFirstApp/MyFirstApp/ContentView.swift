//
//  ContentView.swift
//  MyFirstApp
//
//  Created by marie flores on 26/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    let surfSpot1 = SurfSpot(id: 1, surfBreak:"SkeletonBay", photos:"Hawai", address:"somewhere")
    var spots = [surfSpot1, "Mentawai", "Hawai"]
    
    var body: some View {
        List {
            Text("WannaSurf?")
                .bold()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            ForEach(spots, id: \.self){ spot in
                HStack {
                    Text(surfSpot1.surfBreak)
                    Text(surfSpot1.address)
                    Spacer()
                    Image(surfSpot1.photos)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 80)
                        .clipped()
                }
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
