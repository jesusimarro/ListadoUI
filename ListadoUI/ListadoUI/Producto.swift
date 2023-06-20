//
//  Producto.swift
//  ListadoUI
//
//  Created by estech on 20/2/23.
//

import SwiftUI

struct ProductoItem: Codable, Identifiable {
    var id: Int
    var title: String
    var price: Double
    var description: String
    var category: String
    var image: String
    var rating: RatingItem
    
    static let example = ProductoItem(id: 1, title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops", price: 109.95, description: "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday", category: "men's clothing", image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg", rating: RatingItem.rateExample)
}

struct RatingItem: Codable, Hashable {
    var rate: Double
    var count: Int
    
    static let rateExample = RatingItem(rate: 3.9, count: 120)
}
