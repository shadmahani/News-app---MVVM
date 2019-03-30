//
//  MainViewModel.swift
//  News app
//
//  Created by hossein shademany on 3/26/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import Foundation
import UIKit

class ArticleViewModel {
    // of type abservable for observing changes
    var articles = Observable<[Articles]>([])
    
    var articleCount: Int {
        return articles.value.count
    }
    
    func updateTitle(for indexPath: Int)->String{
        let article = articles.value[indexPath]
        // implement a logic here
        return "\(article.title)"
    }
    func updateImage(for indexPath: Int)->String {
        let article = articles.value[indexPath]
        return article.imageUrl
    }
    func updateContent(for indexPath: Int)-> String {
        let article = articles.value[indexPath]
        return article.content
    }
    
}
// MARK:- Network calls
extension ArticleViewModel {
    
    func fetchData(){
        ApiService.shared.getArticles { (success, article, err) in
            if success {
                print("ok")
                self.articles.value = article!
            }
        }
    }
}
