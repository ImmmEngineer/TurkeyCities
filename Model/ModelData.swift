//
//  ModelData.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 12.02.2024.
//

import Foundation

@Observable
class ModelData{
    var cities: [City] = load("iller.json")
    
    var features : [City]{
        cities.filter{
            $0.isFeatured
        }
    }
    
    var categories : [String : [City]] {
        Dictionary(
            grouping: cities,
            by: { $0.bölge.rawValue}
        )
    }
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        print("burda hata var")
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        print("yüklenmede hata var ")
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        print("Decoding error: \(error)")
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
