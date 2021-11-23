//
//  CatImageModel.swift
//  TryCatImage
//
//  Created by 齋藤百合奈 on 2021/11/14.
//

import Foundation

struct Rakuten: Codable {
    var result: Result
    
    struct Result: Codable {
        var small: [Food]
        var medium: [Food]
        var large: [LargeCate]
        
        struct Food: Codable {
            var categoryName: String
            var parentCategoryId: String
            var categoryId: Int
            var categoryUrl: String
        }
        
        struct LargeCate: Codable {
            var categoryName: String
            var categoryId: String
            var categoryUrl: String
        }
    }
}

class CatImageModel {
    
    let apiUrl = URL(string: "https://app.rakuten.co.jp/services/api/Recipe/CategoryList/20170426?format=json&applicationId=1022307395515225117")!
    
    func getCatURL() -> String {
        
        // API叩く
        let task = URLSession.shared.dataTask(with: apiUrl) { data, response, error in
            guard let data = data, let response = response else { return }
            do {
                let catImage = try JSONDecoder().decode(Rakuten.self, from: data)
                // 結果を表示
                print("\(catImage)")
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
        
        return String()
    }
    
    
}
