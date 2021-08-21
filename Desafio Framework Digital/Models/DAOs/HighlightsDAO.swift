//
//  HighlightsDAO.swift
//  Desafio Framework Digital
//
//  Created by Rodrigo Filomeno on 21/08/21.
//

import UIKit

class HighlightsDAO: NSObject {
    
    
    static func getHighlightProducts() -> ProductList {
        
        let productList: ProductList = [
            ProductModel(id: 1, name: "Bananas", price: 8.99, imgSource: ""),
            ProductModel(id: 1, name: "Maças", price: 3.99, imgSource: ""),
            ProductModel(id: 1, name: "Laranjas", price: 5.99, imgSource: ""),
            ProductModel(id: 1, name: "Peras", price: 7.99, imgSource: ""),
            ProductModel(id: 1, name: "Morangos", price: 10.99, imgSource: ""),
        ]
        
        return productList
        
        
    }
    
}
