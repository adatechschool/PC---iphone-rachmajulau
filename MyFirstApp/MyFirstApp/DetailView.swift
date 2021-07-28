//
//  DetailView.swift
//  MyFirstApp
//
//  Created by marie flores on 27/07/2021.
//

import SwiftUI


struct DetailView: View {
    var spots =
        [
            SurfSpot(id: 1, surfBreak:"Reef1", photos:"SkeletonBay", address:"SkeletonBay"),
            SurfSpot(id: 2, surfBreak:"Reef2", photos:"Hawai", address:"Hawai"),
            SurfSpot(id: 3, surfBreak:"Reef3", photos:"Mentawai", address:"Mentawai")
        ]

    var body: some View {
        VStack {

            Image(spots[0].photos)
                        .offset(y: -130)
                        .padding(.bottom, -130)

                    VStack(alignment: .leading) {
                        Text(spots[0].surfBreak)
                            .font(.title)

                        HStack {
                            Text(spots[0].address)
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
        DetailView()
    }
}
