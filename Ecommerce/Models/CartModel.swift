//
//  CartModel.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 30/07/24.
//

import Foundation
struct CartItemModel: Identifiable {
    let id = UUID()
    let name: String
    let size: String
    let color: String
    let price: Double
    let imageName: String
}
