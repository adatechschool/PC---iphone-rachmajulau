//
//  ModelData.swift
//  MyFirstApp
//
//  Created by user203337 on 8/2/21.
//

import Foundation

var surfSpots: [SurfSpot] = load("surfSpots.json")


func load<T: Decodable>(_ filename: String) -> T {

    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)

    else {

        fatalError("Couldn't find \(filename) in main bundle.")

    }


    do {

        data = try Data(contentsOf: file)

    } catch {

        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")

    }


    do {

        let decoder = JSONDecoder()
        
        let results = try decoder.decode(T.self, from: data)
        
        return results

    } catch {

        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")

    }

}

