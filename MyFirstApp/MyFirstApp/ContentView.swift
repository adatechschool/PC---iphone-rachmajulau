//
//  ContentView.swift
//  MyFirstApp
//
//  Created by marie flores on 26/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    var spots = ["SkeletonBay", "Mentawai", "Hawai"]
    
    var body: some View {
        List {
            Text("WannaSurf?")
                .bold()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            ForEach(spots, id: \.self){ spot in
                HStack {
                    Text(spot)
                    Spacer()
                    Image(spot)
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
