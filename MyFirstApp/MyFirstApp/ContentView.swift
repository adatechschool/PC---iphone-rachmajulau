//
//  ContentView.swift
//  MyFirstApp
//
//  Created by marie flores on 26/07/2021.
//

import SwiftUI
import URLImage

struct ContentView: View {
    
    init() {
        
        if let jsonData = JSON.data(using: .utf8){
            if let result : Result = try? JSONDecoder().decode(Result.self, from: jsonData){
                self.spots = result.records
                print(result.records)
            }
            
        }
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(red: 99/255, green: 173/255, blue: 255/255, alpha: 1.0)]
        
    }
    
    var spots:[SurfSpot] =
        [
            
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
                            URLImage(spot.photoUrl!) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: 100, height: 80)
                                    .clipped()
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("🏄    WannaSurf?")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

