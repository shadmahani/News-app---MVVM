//
//  CollectionViewCell.swift
//  News app
//
//  Created by hossein shademany on 3/26/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6405411235)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var titleLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "test"
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    var authorLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "james"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    var articleImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(articleImageView)
        addSubview(bottomView)
        bottomView.addSubview(titleLbl)
        bottomView.addSubview(authorLbl)
        
        
        NSLayoutConstraint.activate([
            bottomView.heightAnchor.constraint(equalToConstant: 30),
            bottomView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            bottomView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            bottomView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            titleLbl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            titleLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            titleLbl.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            titleLbl.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            authorLbl.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            authorLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            authorLbl.heightAnchor.constraint(equalToConstant: 30),
            
            articleImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            articleImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            articleImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            articleImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
