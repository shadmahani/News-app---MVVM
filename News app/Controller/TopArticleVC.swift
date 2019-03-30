//
//  MainVC.swift
//  MVVM paractice
//
//  Created by hossein shademany on 3/25/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import UIKit

class TopArticleVC: UICollectionViewController {
    // MARK:- Instance
    var viewModel = ArticleViewModel()
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewSetup()
        viewSetup()
        viewModel.fetchData()
        // after fetching data
        viewModel.articles.bind {_ in 
            self.collectionView.reloadData()
        }
    }
    
    // MARK:- Setup
    func viewSetup(){
        view.backgroundColor = #colorLiteral(red: 0.08132412285, green: 0.1745293736, blue: 0.3156577349, alpha: 1)
        title = "Top Articles"
        
    }
    func collectionViewSetup(){
        collectionView.backgroundColor = .clear
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: IDs.articleCollectionCell.rawValue)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

// MARK:- Collectionview
extension TopArticleVC: UICollectionViewDelegateFlowLayout {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.articleCount
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IDs.articleCollectionCell.rawValue, for: indexPath) as! CollectionViewCell
        
        cell.titleLbl.text = viewModel.updateTitle(for: indexPath.item)
        cell.articleImageView.downloadImageWithCache(stringUrl: viewModel.updateImage(for: indexPath.item))
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailArticleVC = DetailArticleVC()
        detailArticleVC.articleViewModel = viewModel
        detailArticleVC.indexPath = indexPath.item
        navigationController?.pushViewController(detailArticleVC, animated: true)
    }
}
