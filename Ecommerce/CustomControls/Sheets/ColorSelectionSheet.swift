//
//  ColorSelectionSheet.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 30/07/24.
//

import SwiftUI

struct ColorSelectionSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedColor: String?
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
                        SheetSelectButton(value: "Orange", type:"color", selectedValue: $selectedColor)
                        SheetSelectButton(value: "Black", type:"color", selectedValue: $selectedColor)
                        SheetSelectButton(value: "Red", type:"color", selectedValue: $selectedColor)
                        SheetSelectButton(value: "Yellow", type:"color", selectedValue: $selectedColor)
                        SheetSelectButton(value: "Blue", type:"color", selectedValue: $selectedColor)
                    }
                    
                }
            
        }
    }
}

#Preview {
    ColorSelectionSheet()
}
