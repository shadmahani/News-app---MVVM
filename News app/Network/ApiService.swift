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
    
   // singleton instance
    static let shared = ApiService()
     private init(){}
    
    //TODO: Replace this with YOUR api key from newsapi.org ---
    let yourApiKey = ""
    // completionHandler
    typealias Result<T> = (_ success: Bool,_ value: T?,_ err: Error?)->Void
    
    func getArticles(completion: @escaping Result<[Article]>){
        let url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(yourApiKey)"
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (res) in
            guard res.result.error == nil else {
                completion(false,nil,res.result.error)
                return}
            var articles = [Article]()
            guard let data = res.data else{return}
            do {
                let data = try JSON(data: data)
                for article in data["articles"].arrayValue {
                    let imageUrl = article["urlToImage"].stringValue
                    let title = article["title"].stringValue
                    let content = article["description"].stringValue
                    let article = Article(title: title, imageUrl: imageUrl, content: content)
                    articles.append(article)
                }
                completion(true,articles,nil)
            }catch let err{
                print(err)
            }
        }
    }
}

