//
//  SheelSelectButton.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 30/07/24.
//

import SwiftUI
        struct SheetSelectButton: View {
            let value: String
            let type : String
            @Binding var selectedValue: String?

            var body: some View {
                Button(action: {
                    selectedValue = value
                    print(value)
                    print(selectedValue);
                }) {
                    HStack {
                        Text(value)
                        Spacer()
                        if(type == "color"){
                            Circle()
                                
                                .fill(colorMap[value.lowercased()] ?? .clear)
                                .frame(width: 15, height: 15)
                                .padding(.horizontal,15)
                                .overlay(selectedValue==value ?
                                         AnyView(Circle().stroke(Color.white, lineWidth: 3)) : AnyView(EmptyView())

                                               )
                                
                        }
                        if selectedValue == value {
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity)
                    .background(selectedValue == value ? Color(.colorPurple) : Color(.systemGray5))
                    .cornerRadius(30)
                    .foregroundColor(selectedValue == value ? .white : .black)
                    .fontWeight(selectedValue == value ? .bold : .medium)
                    .padding(.horizontal, 20)
                }
            }
        }

//#Preview {
//    SheetSelectButton(value: "S", selectedValue: $selectedSize)
//}
