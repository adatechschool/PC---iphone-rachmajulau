import Foundation

struct Result : Hashable, Codable {
    var records : [SurfSpot]
}

struct SurfSpot : Hashable, Codable {

    enum CodingKeys: String, CodingKey {
        case name
        case photoUrlString = "Photos"
        case address = "Address"
        case type = "Surf Break"
    }

    var name: String
    var photoUrlString: String
    var photoUrl : URL?
    var address: String
    var type: String

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        address = try container.decode(String.self, forKey: .address)
        type = try container.decode(String.self, forKey: .type)
        photoUrlString = try container.decode(String.self, forKey: .photoUrlString)
        self.photoUrl = URL(string: photoUrlString)
    }
}


