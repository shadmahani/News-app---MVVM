//
//  MainViewModel.swift
//  News app
//
//  Created by hossein shademany on 3/26/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import Foundation
import UIKit

class MainViewModel {
    
    var article: Article
    
    public init(article: Article) {
        self.article = article
    }
    var title: String {
        return article.title
    }

    var author: String {
        return article.author
    }
    var imageUrl: String {
       
        return article.imageUrl
    }
}
extension MainViewModel {
    func config(_ view: CollectionViewCell){
        view.titleLbl.text = title
        view.articleImageView.downloadImageWithCache(stringUrl: imageUrl)
    }
    
    
}
