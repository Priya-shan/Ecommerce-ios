//
//  CartPageView.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 30/07/24.
//

import SwiftUI

struct CartPageView: View {
  
    @State private var cartItems = [
        CartItemModel(name: "Men's Harrington Jacket", size: "M", color: "Lemon", price: 148, imageName: "SampleProduct"),
        CartItemModel(name: "Men's Coaches Jacket", size: "M", color: "Black", price: 52, imageName: "SampleProduct2")
    ]
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Back action
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color(.colorBgLight))
                        .cornerRadius(50)
                }
                Spacer()
//                Spacer()
                Text("Cart")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Button(action: {
                    // Remove all items action
                }) {
                    Text("Remove All")
                        .foregroundColor(.black)
                }
            }
            .padding()
            
            ScrollView {
                ForEach(cartItems) { item in
                    CartItem(item: item)
                }
            }
            
            VStack {
                HStack {
                    Text("Subtotal")
                    Spacer()
                    Text("₹200.00")
                }
                .padding(.vertical,5)
                HStack {
                    Text("Shipping Cost")
                    Spacer()
                    Text("₹8.00")
                }                .padding(.vertical,5)

                HStack {
                    Text("Tax")
                    Spacer()
                    Text("₹0.00")
                }                .padding(.vertical,5)

                HStack {
                    Text("Total")
                        .fontWeight(.bold)
                    Spacer()
                    Text("₹208.00")
                        .fontWeight(.bold)
                }                .padding(.vertical,5)

            }
            
            HStack {
                TextField("Enter Coupon Code", text: .constant(""))
                    .padding()
                    .padding(.horizontal,40)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        Button(action: {}){
                            HStack{
                                Image("IconDiscount")
                                    .resizable()
                                    .frame(width:30,height:30)
                                    .padding()
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .frame(width:5,height:5)
                                    .padding()
                                    .background(Color(.colorPurple))
                                    .foregroundColor(.white)
                                    .cornerRadius(50)
                                    .padding(.horizontal)
                            }
                        }
                    )
                
            }
            .padding(.vertical,10)
            .padding(.bottom,20)
            
            Button(action: {
                // Checkout action
            }) {
                Text("Checkout")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.colorPurple))
                    .cornerRadius(30)
            }
            .padding(.vertical,10)
        }
        .padding(.horizontal,20)
       
    }
}

#Preview {
    CartPageView()
}
