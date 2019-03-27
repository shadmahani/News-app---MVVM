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

    var articles = [Article]()
   
    var title: String {
        return "this is \(articles)"
    }
}
extension MainViewModel {

    func config(view: CollectionViewCell){
        view.titleLbl.text = title
    }
    func fetchData(completion: @escaping ()->Void){
                ApiService.shared.getArticles { (success, err,article)  in
                    if success {
                        print("ok")
                        self.articles = article!
                        completion()
//                        self.articles = article ?? []
//                        self.mainViewModel = article!.map({return MainViewModel(article: $0)})
//                        self.collectionView.reloadData()
                    }
                }
    }
    
    
}
