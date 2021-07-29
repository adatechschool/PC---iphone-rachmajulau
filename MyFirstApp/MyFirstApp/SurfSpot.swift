//
//  SurfSpot.swift
//  MyFirstApp
//
//  Created by marie flores on 27/07/2021.
//

import Foundation
import SwiftUI
let JSON  = """
    {
    "records": [{
            "name" : "Pipeline",
            "Surf Break": "Reef Break",
            "Photos": "<https://dl.airtable.com/ZuXJZ2NnTF40kCdBfTld_thomas-ashlock-64485-unsplash.jpg>",
            "Address": "Oahu, Hawaii"
        },
        {"name" : "Supertubes",
            "Surf Break": "Point Break",
            "Photos": "<https://dl.airtable.com/e3QoP3cFSyykZJOvWGIy_cesar-couto-477018-unsplash%20(1).jpg>",
            "Address": "Jeffreys Bay, South Africa"
        }
    ]
}
"""


struct SurfSpot : Hashable, Codable {
   
    var name: String
    var photos: String
    var address: String
    var type: String
    
    init(id: Int, name: String, photos: String, address: String, type:String) {
        self.name = name
        self.photos = photos
        self.address = address
        self.type = type
    }
}

    

