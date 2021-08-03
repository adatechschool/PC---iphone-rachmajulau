//
//  SurfSpotDetail.swift
//  MyFirstApp
//
//  Created by user203337 on 8/3/21.
//

import SwiftUI
import URLImage

struct SurfSpotDetail: View {
    var surfSpot : SurfSpot
    
    
    var body: some View {
        VStack {
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
                
                HStack {
                    Text(surfSpot.address)
                        .font(.subheadline)
                    Spacer()
                    Text(surfSpot.type)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct SurfSpotDetail_Previews: PreviewProvider {
    static var previews: some View {
        SurfSpotDetail(surfSpot: surfSpots[1])
    }
}
