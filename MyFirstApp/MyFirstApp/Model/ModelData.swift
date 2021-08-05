//
//  ModelData.swift
//  MyFirstApp
//
//  Created by user203337 on 8/2/21.
//

import Foundation


var surfSpots :[SurfSpot] = load("surfSpots.json")


func load(_ filename: String) ->[SurfSpot]{

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
        
        let results: Result = try decoder.decode(Result.self, from: data)
        
        return results.records

    } catch {

        fatalError("Couldn't parse \(filename) as \(Result.self):\n\(error)")

    }

}

