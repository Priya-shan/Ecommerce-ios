//
//  CartItem.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 30/07/24.
//

import SwiftUI


struct CartItem: View {
    var item: CartItemModel
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(8)
               
            VStack(alignment: .leading) {
                Spacer()
                Text(item.name)
                    .font(.subheadline)
                Spacer()
                HStack {
                    Text("Size - \(item.size)")
                    Spacer()
                    Text("Color - \(item.color)")
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                Spacer()
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            VStack{
                Spacer()
                Text("₹\(item.price, specifier: "%.2f")")
                    .font(.subheadline)
                Spacer()
                HStack {
                    Button(action: {
                        // Increase quantity action
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.purple)
                            .font(.title2)
                            
                    }
                    Text("1")
                    Button(action: {
                        // Decrease quantity action
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.purple)
                            .font(.title2)
                    }
                }}
        }
        .frame(height: 65)
        .padding(20)
        .background(Color(.colorBgLight))
        .cornerRadius(8)
    }
}

#Preview {
    CartItem(item: CartItemModel(name: "Men's Harrington Jacket", size: "M", color: "Lemon", price: 148, imageName: "SampleProduct"))}
