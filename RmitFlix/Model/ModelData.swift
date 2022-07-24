//
//  ModelData.swift
//  Rmit
//
//  Created by Huy Bui Thanh on 16/07/2022.
//

import Foundation

// Initialize here

// Replace with`Initialize here` Comment above
var movies: [Movie] = load("movies.json")
var populars: [Movie] = load("populars.json")
var asias: [Movie] = load("asias.json")
var tops: [Movie] = load("tops.json")

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
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
