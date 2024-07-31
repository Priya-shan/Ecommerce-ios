import Foundation
import SwiftUI
import ComposableArchitecture

// Define the product model
struct Product: Equatable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var currency: String
    var stock: Int
    var category: String
    var images: [String]
    var rating: Double
    var reviews: [Review]
}

struct Review: Equatable {
    var user: String
    var comment: String
    var rating: Int
}

struct HomePageFeature: Reducer {
    struct State: Equatable {
        var productList: [Product] = []
    }
    
    enum Action:Equatable {
        case getProductList
        case setProductList([Product])
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .getProductList:
                // This would be where you typically fetch your data from an API or local store.
                // For this example, we'll just assign dummy data directly.
                let products = [
                    Product(
                        id: 1,
                        name: "Wireless Headphones",
                        description: "High-quality wireless headphones with noise-cancellation.",
                        price: 99.99,
                        currency: "USD",
                        stock: 150,
                        category: "Electronics",
                        images: [
                            "https://example.com/images/headphones1.jpg",
                            "https://example.com/images/headphones2.jpg"
                        ],
                        rating: 4.5,
                        reviews: [
                            Review(user: "john_doe", comment: "Great sound quality!", rating: 5),
                            Review(user: "jane_smith", comment: "Comfortable to wear.", rating: 4)
                        ]
                    ),
                    Product(
                        id: 2,
                        name: "Smartphone",
                        description: "Latest model with advanced features and high performance.",
                        price: 799.99,
                        currency: "USD",
                        stock: 75,
                        category: "Electronics",
                        images: [
                            "https://example.com/images/smartphone1.jpg",
                            "https://example.com/images/smartphone2.jpg"
                        ],
                        rating: 4.8,
                        reviews: [
                            Review(user: "alice_jones", comment: "Amazing camera quality!", rating: 5),
                            Review(user: "bob_brown", comment: "Fast and responsive.", rating: 5)
                        ]
                    ),
                    Product(
                        id: 3,
                        name: "Running Shoes",
                        description: "Comfortable and durable running shoes for all terrains.",
                        price: 59.99,
                        currency: "USD",
                        stock: 200,
                        category: "Sportswear",
                        images: [
                            "https://example.com/images/shoes1.jpg",
                            "https://example.com/images/shoes2.jpg"
                        ],
                        rating: 4.2,
                        reviews: [
                            Review(user: "chris_white", comment: "Very comfortable for long runs.", rating: 4),
                            Review(user: "diana_green", comment: "Stylish and durable.", rating: 4)
                        ]
                    ),
                    Product(
                        id: 4,
                        name: "Laptop",
                        description: "High-performance laptop with sleek design and powerful features.",
                        price: 1299.99,
                        currency: "USD",
                        stock: 50,
                        category: "Computers",
                        images: [
                            "https://example.com/images/laptop1.jpg",
                            "https://example.com/images/laptop2.jpg"
                        ],
                        rating: 4.7,
                        reviews: [
                            Review(user: "emily_young", comment: "Great for multitasking and gaming.", rating: 5),
                            Review(user: "frank_thomas", comment: "Battery life could be better.", rating: 4)
                        ]
                    ),
                    Product(
                        id: 5,
                        name: "Coffee Maker",
                        description: "Automatic coffee maker with multiple brewing options.",
                        price: 49.99,
                        currency: "USD",
                        stock: 120,
                        category: "Home Appliances",
                        images: [
                            "https://example.com/images/coffeemaker1.jpg",
                            "https://example.com/images/coffeemaker2.jpg"
                        ],
                        rating: 4.3,
                        reviews: [
                            Review(user: "george_hall", comment: "Makes great coffee!", rating: 5),
                            Review(user: "hannah_wright", comment: "Easy to use and clean.", rating: 4)
                        ]
                    )
                ]
                
                return .send(.setProductList(products))
                
            case let .setProductList(products):
                state.productList = products
                return .none
            }
        }
    }
}
