//
//  ProductListByCategoryView.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//

import SwiftUI

struct ProductListByCategoryView: View {
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible())
       ]
    var body: some View {
        VStack{
            HStack{
                Text("Hoodies (240)")
                    .fontWeight(.bold)
                    .font(.title3)
                Spacer()
            }
            .padding(.horizontal,30)
            
            ScrollView {
                       LazyVGrid(columns: columns, spacing: 16) {       ProductCard(imageName: "SampleProduct1",         productName: "Men's Jacket",                 productPrice: 999.99)
                           ProductCard(imageName: "SampleProduct2", productName: "Men's Jacket", productPrice: 999.99)
                           ProductCard(imageName: "SampleProduct3", productName: "Men's Jacket", productPrice: 999.99)
                           ProductCard(imageName: "SampleProduct4", productName: "Men's Jacket", productPrice: 999.99)
                           ProductCard(imageName: "SampleProduct5", productName: "Men's Jacket", productPrice: 999.99)
                           ProductCard(imageName: "SampleProduct6", productName: "Men's Jacket", productPrice: 999.99)
                           
                           }
                       }
                       .padding()
            Spacer()
        }
        .padding(.top,30)
        
    }
}

#Preview {
    ProductListByCategoryView()
}
