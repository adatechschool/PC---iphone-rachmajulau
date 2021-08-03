//
//  SurfSpotList.swift
//  MyFirstApp
//
//  Created by user203337 on 8/3/21.
//

import SwiftUI
import URLImage

struct SurfSpotList: View {
    init() {
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(red: 99/255, green: 173/255, blue: 255/255, alpha: 1.0)]
        
    }
    
    var body: some View {
        NavigationView {
            List(surfSpots, id: \.self) { surfSpot in
                NavigationLink(destination: SurfSpotDetail(surfSpot: surfSpot)){
                    SurfSpotRow(surfSpot: surfSpot)
                }
            }
            .navigationTitle("🏄    WannaSurf?")
        }
    }

}
        

struct SurfSpotList_Previews: PreviewProvider {
    static var previews: some View {
        SurfSpotList()
    }
}
