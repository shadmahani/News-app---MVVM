//
//  MainVC.swift
//  MVVM paractice
//
//  Created by hossein shademany on 3/25/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import UIKit

class MainVC: UICollectionViewController {
    
    let cellId = "cellId"
    let viewModel = MainViewModel()
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewSetup()
        viewModel.fetchData {
            self.collectionView.reloadData()
        }
//        ApiService.shared.getArticles { (success, err,article)  in
//            if success {
//                print("ok")
//                self.mainViewModel = article!.map({return MainViewModel(article: $0)})
//                self.collectionView.reloadData()
//            }
//        }
        
    }
    // MARK:- Setup
    func collectionViewSetup(){
        collectionView.backgroundColor = .white
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: IDs.mainViewCollection.rawValue)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

// MARK:- Collectionview
extension MainVC: UICollectionViewDelegateFlowLayout {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.articles.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IDs.mainViewCollection.rawValue, for: indexPath) as! CollectionViewCell
//        let v = viewModel.articles[indexPath.item]
//        cell.titleLbl.text = v.title
        viewModel.config(view: cell)
//        mainViewModel[indexPath.item].config(cell)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
}
