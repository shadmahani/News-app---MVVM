//
//  UIView + extension.swift
//  News app
//
//  Created by hossein shademany on 3/28/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import UIKit
extension UIView {
    func round(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}
