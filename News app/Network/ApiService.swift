//
//  ApiService.swift
//  MVVM paractice
//
//  Created by hossein shademany on 3/25/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ApiService {
    static let shared = ApiService()
    let url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=0b96a00decae41f8977d19b8b260453f"
    
    func getArticles(completion: @escaping (_ success: Bool,_ err: Error?,_ articles: [Article]?)->()){
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (res) in
            guard res.result.error == nil else {
                completion(false,res.result.error, nil)
                return}
            var articles = [Article]()
            guard let data = res.data else{return}
            do {
                let data = try JSON(data: data)
                for article in data["articles"].arrayValue {
                    let autor = article["author"].stringValue
                    let imageUrl = article["urlToImage"].stringValue
                    let title = article["title"].stringValue
                    let article = Article(author: autor, title: title, imageUrl: imageUrl)
                    articles.append(article)
                    
                }
                completion(true, nil, articles)
            }catch let err{
                print(err)
            }
        }
    }
}
//let sources = article["source"].dictionaryValue
//let author = article["author"].stringValue
//let description = article["description"].stringValue
//let imageUrl = article["imageUrl"].stringValue
//let publishData = article["publishdate"].stringValue
//let content = article["content"].stringValue
