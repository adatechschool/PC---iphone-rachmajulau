//
//  DetailView.swift
//  MyFirstApp
//
//  Created by marie flores on 27/07/2021.
//

import SwiftUI


struct DetailView: View {
    var surfSpot : SurfSpot


    var body: some View {
        VStack {

            Image(surfSpot.photos)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width:300, height: 300)
                .clipped()

                    VStack(alignment: .leading) {
                        Text(surfSpot.surfBreak)
                            .font(.title)

                        HStack {
                            Text(surfSpot.address)
                                .font(.subheadline)
                            Spacer()
                            Text("South Africa")
                                .font(.subheadline)
                        }
                    }
                    .padding()

                    Spacer()
                }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(surfSpot: SurfSpot(id: 1, surfBreak:"Reef1", photos:"SkeletonBay", address:"SkeletonBay"))
        
    }
}
