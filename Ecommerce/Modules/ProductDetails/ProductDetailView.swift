//
//  ProductDetailView.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//

import SwiftUI

struct ProductDetailView: View {
    @State private var isSizeSheetPresented = false
    @State private var isColorSheetPresented = false
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical){
                VStack{
                    ScrollView(.horizontal){
                        HStack{
                            Image("SampleProduct")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 250)
                            Image("SampleProduct-v2")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 250)
                            Image("SampleProduct-v1")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 250)
                        }
                    }
                    .padding(.horizontal,20)
                    VStack{
                        HStack{
                            Text("Men's Harrington Jacket")
                                .font(.headline)
                                .padding(.top, 5)
                                .frame(alignment: .leading)
                            Spacer()
                        }
                        HStack{
                            Text("₹\(String(format: "%.2f", 499.89))")
                                .font(.subheadline)
                                .foregroundColor(Color(.colorPurple))
                                .fontWeight(.bold)
                                .padding(.top, 2)
                            Spacer()
                        }
                    }.padding(.bottom,30)
                    
                        .padding(.horizontal,20)
                    Button(action: {
                                   isSizeSheetPresented.toggle()
                               }) {
                                   HStack {
                                       Text("Size")
                                       Spacer()
                                       Text("S")
                                           .padding(.horizontal, 20)
                                       Image(systemName: "chevron.down")
                                   }
                                   .padding(20)
                                   .background(Color(.colorBgLight))
                                   .foregroundColor(.black)
                                   .cornerRadius(30)
                                   .padding(.horizontal, 20)
                               }
                    Button(action: {
                                   isColorSheetPresented.toggle()
                    }) {
                        HStack{
                            Text("Color")
                            Spacer()
                            Circle()
                                .fill(Color.green)
                                .frame(width: 15, height: 15)
                                .padding(.horizontal,15)
                            Image(systemName:"chevron.down")
                        }
                        .padding(20)
                        .background(Color(.colorBgLight))
                        .foregroundColor(.black)
                        .cornerRadius(30)
                        .padding(.horizontal,20)
                    }
                    
                    HStack{
                        Text("Quantity")
                        Spacer()
                        Button("+"){
                            
                        }
                        .fontWeight(.bold)
                        .frame(width: 20,height: 20)
                        .background(Color(.colorPurple))
                        .cornerRadius(30)
                        .padding(.horizontal,10)
                        .foregroundColor(.white)
                        
                        
                        Text("1")
                        Button("-"){
                            
                        }
                        .fontWeight(.bold)
                        .frame(width: 20,height: 20)
                        .background(Color(.colorPurple))
                        .cornerRadius(30)
                        .padding(.horizontal,10)
                        .foregroundColor(.white)
                        
                        Image(systemName:"chevron.down")
                    }
                    .padding(20)
                    .background(Color(.colorBgLight))
                    .cornerRadius(30)
                    .padding(.horizontal,20)
                    
                    HStack{
                        Text("Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.")
                        
                        
                    }.padding(.horizontal,30)
                        .padding(.top,20)
                        .foregroundColor(Color(.gray))
                        .font(.subheadline)
                    
                    ProductReviewView()
                        .padding(.horizontal,30)
                    
                }
            }
            .padding(.bottom, geometry.safeAreaInsets.bottom + 50)
            
            VStack{
                Spacer()
                Button(action: {
                    
                               }) {
                                   HStack {
                                       Text("₹499.56")
                                       Spacer()
                                       Text("Add to Bag")
                                   }
                               }
                               .padding()
                               .fontWeight(.bold)
                               .frame(maxWidth: .infinity)
                               .background(Color(.colorPurple))
                               .cornerRadius(30)
                               .foregroundColor(.white)
                               .padding(.horizontal, 30)
                               .padding(.bottom, 20)
            }
            .sheet(isPresented: $isSizeSheetPresented) {
                        SizeSelectionSheet()
                
                    .presentationDetents([.height(400), .medium, .large])
                        .presentationDragIndicator(.automatic)
            }
            .sheet(isPresented: $isColorSheetPresented) {
                        ColorSelectionSheet()
                
                    .presentationDetents([.height(400), .medium, .large])
                        .presentationDragIndicator(.automatic)
            }
            .cornerRadius(100)
        }
      
    }
}

#Preview {
    ProductDetailView()
}
