import Foundation

let JSON  = """
    {
    "records": [{
            "name" : "Pipeline",
            "Surf Break": "Reef Break",
            "Photos": "https://dl.airtable.com/ZuXJZ2NnTF40kCdBfTld_thomas-ashlock-64485-unsplash.jpg",
            "Address": "Oahu, Hawaii"
        },
        {"name" : "Supertubes",
            "Surf Break": "Point Break",
            "Photos": "https://dl.airtable.com/e3QoP3cFSyykZJOvWGIy_cesar-couto-477018-unsplash%20(1).jpg",
            "Address": "Jeffreys Bay, South Africa"
        }
    ]
}
"""
struct Result : Codable {
    var records : [SurfSpot]
}

struct SurfSpot : Hashable, Codable {
    
    enum CodingKeys: String, CodingKey {
        case name
        case photoUrlString = "Photos"
        //        case address = "Address"
        //        case type = "Surf Break"
    }
    
    
    var name: String
    var photoUrlString: String
    var photoUrl : URL?
    //    var address: String
    //    var type: String
    
    init(from decoder: Decoder) throws {
        print("tata")
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        photoUrlString = try container.decode(String.self, forKey: .photoUrlString)
//        self.photoUrl = URL(string: photoUrlString)
    }
    
    init(name: String, photoUrlString: String) {
        print("tonton")
        self.name = name
        self.photoUrlString = photoUrlString
        print(photoUrlString)
        self.photoUrl = URL(string: photoUrlString)
        print(photoUrl)
        //        self.address = address
        //        self.type = type
    }
}



