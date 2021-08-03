//
//  SurfSpotRow.swift
//  MyFirstApp
//
//  Created by user203337 on 8/2/21.
//

import SwiftUI
import URLImage

struct SurfSpotRow: View {
    

    var surfSpot: SurfSpot
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(surfSpot.name)
                    .font(.headline)
                Text(surfSpot.address)
                    .font(.subheadline)
            }
            
            Spacer()
            
            URLImage(surfSpot.photoUrl!) { image in
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

struct SurfSpotRow_Previews: PreviewProvider {
    static var previews: some View {
        SurfSpotRow(surfSpot: surfSpots[1])
    }
}
