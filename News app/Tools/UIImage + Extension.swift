//
//  UIImage + Extension.swift
//  News app
//
//  Created by hossein shademany on 3/27/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import UIKit
let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    func downloadImageWithCache(stringUrl: String){
        self.image = nil
        guard let imageUrl = URL(string: stringUrl) else{return}
        // if cache exist -----
        if let imageFromCache = imageCache.object(forKey: stringUrl as AnyObject) as? UIImage {
            self.image = imageFromCache
        }else{
            // if cach does not exist ----
            URLSession.shared.dataTask(with: imageUrl) { (data, res, err) in
                if err == nil {
//                    Logger.log("download image url", event: .success)
                    
                    DispatchQueue.main.async {
                        if let downloadedImage = UIImage(data: data!){
                            imageCache.setObject(downloadedImage, forKey: stringUrl as AnyObject)
                            self.image = downloadedImage
                        }
                    }
                }else{
                    print(err!)
                }
                }.resume()
        }
    }
}

