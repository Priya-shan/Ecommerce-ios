//
//  ProductDetailFeature.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//

import SwiftUI
import ComposableArchitecture
struct ProductDetailFeature: Reducer {
    struct State: Equatable {
        var productList: [Product] = []
    }
    
    enum Action:Equatable {
        case getProductList
    }
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .getProductList:
                return .none
            }
        }
    }
}
