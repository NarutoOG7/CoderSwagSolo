//
//  DataService.swift
//  CoderSwagSolo
//
//  Created by Spencer Belton on 5/14/21.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "HOODIES", imageName: "hoodies"),
        Category(title: "SHIRTS", imageName: "shirts"),
        Category(title: "HATS", imageName: "hats"),
        Category(title: "DIGITAL", imageName: "digital")
    ]
    
    private let hats = [
        Product(imageName: "hat01", title: "Devslopes Logo Graphic Beanie", price: "$24"),
        Product(imageName: "hat02", title: "Devslopes Logo Hat Black", price: "$23"),
        Product(imageName: "hat03", title: "Devslopes Logo Hat White", price: "$22"),
        Product(imageName: "hat04", title: "Devslopes Logo Snapback", price: "$20")
    ]
    
    private let shirts = [
        Product(imageName: "shirt01", title: "Devslopes Logo Shirt Black", price: "$30"),
        Product(imageName: "shirt02", title: "Devslopes Badge Shirt Light Grey", price: "$25"),
        Product(imageName: "shirt03", title: "Devslopes Logo Shirt Red", price: "$20"),
        Product(imageName: "shirt04", title: "Hustle Delegate Grey", price: "$35"),
        Product(imageName: "shirt05", title: "Kickflip Studios Black", price: "$33")
    ]
    
    private let hoodies = [
        Product(imageName: "hoodie01", title: "Devslopes Logo Hoodie Grey", price: "$40"),
        Product(imageName: "hoodie02", title: "Devslopes Logo Hoodie Red", price: "$42"),
        Product(imageName: "hoodie03", title: "Devslopes Hoodie Grey", price: "$38"),
        Product(imageName: "hoodie04", title: "Devslopes Hoodie Black", price: "$35")
    ]
    
    private let digtalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        
        switch title {
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return getDigital()
        default:
            return getHats()
        }
        
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigital() -> [Product] {
        return digtalGoods
    }
}
