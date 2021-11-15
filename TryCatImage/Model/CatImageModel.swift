//
//  CatImageModel.swift
//  TryCatImage
//
//  Created by 齋藤百合奈 on 2021/11/14.
//

import Foundation

struct CatImage: Codable {
    let breeds: [String]
    let id: Int
    let url: String
    let width: Int
    let height: Int
}

class CatImageModel {
    
    let apiUrl = URL(string: "https://api.thecatapi.com/v1/images/search?format=json")!
    
    func getCatURL() -> String {
        
        // API叩く
        let task = URLSession.shared.dataTask(with: apiUrl) { data, response, error in
            guard let data = data, let response = response else { return }
            do {
                let decoder = JSONDecoder()
                let catImage = try decoder.decode(CatImage.self, from: data)
                // 結果を表示
                print("url: \(catImage)")
                print("age: \(catImage.id)")
            } catch {
//                print(error.description)
            }
        }
        task.resume()
        
        return String()
    }
    
    
}
