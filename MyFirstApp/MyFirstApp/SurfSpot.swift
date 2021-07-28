//
//  SurfSpot.swift
//  MyFirstApp
//
//  Created by marie flores on 27/07/2021.
//

import Foundation
import SwiftUI

struct SurfSpot : Hashable, Codable {
    var id: Int
    var surfBreak: String
    var photos: String
    var address: String
    
    init(id: Int, surfBreak: String, photos: String, address: String) {
        self.id = id
        self.surfBreak = surfBreak
        self.photos = photos
        self.address = address
    }
   
}
    

