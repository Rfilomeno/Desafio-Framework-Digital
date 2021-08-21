//
//  ProductModel.swift
//  Desafio Framework Digital
//
//  Created by Rodrigo Filomeno on 21/08/21.
//

import Foundation

typealias ProductList = [ProductModel]
struct ProductModel: Codable {
    
    var id: Int? = nil
    var name: String? = nil
    var price: Double? = nil
    var imgSource: String? = nil
    
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case price = "price"
        case imgSource = "imgageSource"
    }
    
    init(id: Int? = nil, name: String? = nil, price: Double? = nil, imgSource: String? = nil){
        self.id = id
        self.name = name
        self.price = price
        self.imgSource = imgSource
    }
}
