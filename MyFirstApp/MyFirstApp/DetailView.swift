//
//  DetailView.swift
//  MyFirstApp
//
//  Created by marie flores on 27/07/2021.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
      
        VStack {

            Image("SkeletonBay")
                        .offset(y: -130)
                        .padding(.bottom, -130)

                    VStack(alignment: .leading) {
                        Text("Supertubes")
                            .font(.title)

                        HStack {
                            Text("Jeffreys Bay")
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
