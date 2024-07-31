//
//  SizeSelectionSheet.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//

import SwiftUI

    struct SizeSelectionSheet: View {
        @Environment(\.presentationMode) var presentationMode
        @State private var selectedSize: String?
        var body: some View {
            ScrollView(.vertical){
                VStack {
                    HStack{
                        Spacer()
                        Text("Size")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                        }
                        
                    }.padding(.horizontal,30)
                        .padding(.vertical,10)
                        .padding(.top,20)
                    
                    VStack(spacing: 10) {
                        SheetSelectButton(value: "S",type: "size", selectedValue: $selectedSize)
                        SheetSelectButton(value: "M",type: "size", selectedValue: $selectedSize)
                        SheetSelectButton(value: "L", type: "size",selectedValue: $selectedSize)
                        SheetSelectButton(value: "XL",type: "size", selectedValue: $selectedSize)
                        SheetSelectButton(value: "XXL",type: "size", selectedValue: $selectedSize)
                    }
                    
                }
            }
        }
    }

#Preview {
    SizeSelectionSheet()
}
