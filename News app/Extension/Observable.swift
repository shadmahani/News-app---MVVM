//
//  Observable.swift
//  News app
//
//  Created by hossein shademany on 3/26/19.
//  Copyright © 2019 hossein shademany. All rights reserved.
//

import Foundation

class Observable<T> {
    
    typealias Listener = (T) -> Void
    var listener: Listener?
    var value: T {
        didSet{
            listener?(value)
        }
    }
    init(_ value: T){
        self.value = value
    }
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
}
