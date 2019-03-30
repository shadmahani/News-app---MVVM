//
//  DetailArticleVC.swift
//  News app
//
//  Created by hossein shademany on 3/29/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import UIKit

class DetailArticleVC: UIViewController {
//    var articleImageView: UIImageView = {
//        let image = UIImageView()
//        image.image = #imageLiteral(resourceName: "0017")
//        image.contentMode = .scaleAspectFill
//        image.clipsToBounds = true
//        image.translatesAutoresizingMaskIntoConstraints = false
//        return image
//    }()
//    var imageViewContainer: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    var contentLbl: UILabel = {
//        let lbl = UILabel()
//        lbl.translatesAutoresizingMaskIntoConstraints = false
//        return lbl
//    }()
//    let contentContinerView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .red
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    let scrollView: UIScrollView = {
//        let sv = UIScrollView()
//        sv.contentInsetAdjustmentBehavior = .never
//        
//        sv.translatesAutoresizingMaskIntoConstraints = false
//        return sv
//    }()
    var articleViewModel: ArticleViewModel!
    var indexPath: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSetup()
        constriantSetup()
//        scrollView.scrollIndicatorInsets = view.safeAreaInsets
//        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: view.safeAreaInsets.bottom, right: 0)
    }
    
    func constriantSetup(){
        
//        view.addSubview(scrollView)
//        scrollView.addSubview(articleImageView)
//        scrollView.addSubview(contentContinerView)
        
        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
//            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
//            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
//            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
//
//            articleImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
//            articleImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
//            articleImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
//            articleImageView.heightAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.75),
//
//            contentContinerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
//            contentContinerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
//            contentContinerView.topAnchor.constraint(equalTo: articleImageView.bottomAnchor, constant: 0),
//            contentContinerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            
            ])
    }
    func viewSetup(){
        view.backgroundColor = #colorLiteral(red: 0.08132412285, green: 0.1745293736, blue: 0.3156577349, alpha: 1)
        navigationController?.isNavigationBarHidden = true
    }
}
