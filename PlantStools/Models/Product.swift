//
//  Product.swift
//  PlantStools
//
//  Created by Sergio Herrera on 10/6/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

// mock data
var productList = [
    Product(name: "Folding Tray Stool", image: "stool1", price: 18),
    Product(name: "Tan Stool", image: "stool2", price: 12),
    Product(name: "Round Brown Stool", image: "stool3", price: 25),
    Product(name: "Flat Brown Stool", image: "stool4", price: 23),
    Product(name: "Tan Cradle Stool", image: "stool5", price: 18),
    Product(name: "Tan Rack Stool", image: "stool6", price: 33),
    Product(name: "Brown Rack Stool", image: "stool7", price: 35),
    Product(name: "Tan Box Stool", image: "stool8", price: 20),
]

