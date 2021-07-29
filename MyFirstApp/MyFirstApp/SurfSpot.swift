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
    var name: String
    var photos: String
    var address: String
    var type: String
    
    init(id: Int, name: String, photos: String, address: String, type:String) {
        self.id = id
        self.name = name
        self.photos = photos
        self.address = address
        self.type = type
    }
   
}
    

