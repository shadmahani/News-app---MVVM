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

//guard res.result.error == nil else{return}
//
//guard let data = res.data else{return}
//do {
//    let data = try JSON(data: data)
//    //                let aricles =
//    let totalResults = data["totalResults"].stringValue
//    let status = data["status"].stringValue
//
//    for article in data["articles"].arrayValue {
//        let sources = article["source"].dictionaryValue
//        let author = article["author"].stringValue
//        let title = article["title"].stringValue
//        let description = article["description"].stringValue
//        let imageUrl = article["imageUrl"].stringValue
//        let publishData = article["publishdate"].stringValue
//        let content = article["content"].stringValue
//        let article = Article(sources: sources, author: author, title: title, description: description, imageUrl: imageUrl, publishData: publishData, content: content)
//        self.articles.append(article)
//    }
//    let new = News(status: status, totalResult: totalResults, articles: self.articles)
//
//    self.news.append(new)
//
//
//}catch let err{
//    print(err)
//}
