//
//  DetailView.swift
//  MyFirstApp
//
//  Created by marie flores on 27/07/2021.
//

import SwiftUI
import URLImage


struct DetailView: View {
    var surfSpot : SurfSpot
    
    
    var body: some View {
        VStack {
            
            //            Image(surfSpot.photos)
            //                .resizable()
            //                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            //                .frame(width:300, height: 300)
            //                .clipped()
            
            URLImage(surfSpot.photoUrl!) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width:300, height: 300)
                    .clipped()
            }
            
            VStack(alignment: .leading) {
                Text(surfSpot.name)
                    .font(.title)
                
//                HStack {
//                    Text(surfSpot.address)
//                        .font(.subheadline)
//                    Spacer()
//                    Text(surfSpot.type)
//                        .font(.subheadline)
//                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(surfSpot: SurfSpot(name: "pipeline", photoUrlString: "Hawai"))
        
    }
}
