//
//  Product.swift
//  CoderSwagSolo
//
//  Created by Spencer Belton on 5/15/21.
//

import Foundation

struct Product {
    
    private(set) public var imageName: String
    private(set) public var title: String
    private(set) public var price: String
    
    init(imageName: String, title: String, price: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
