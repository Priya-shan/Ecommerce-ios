//
//  ListCategoriesView.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//

import SwiftUI

struct ListCategoriesView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Shop by Categories")
                    .fontWeight(.bold)
                    .font(.title2)
                Spacer()
            }
            .padding(.horizontal,30)
            
            VStack{
                HorizontalAvatarWithName(imageName: "CoverHoodie", itemName:"Hoodie")
                    .padding(10)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color(.colorBgLight))
                    .cornerRadius(10)
                HorizontalAvatarWithName(imageName: "CoverShorts", itemName:"Shorts")
                    .padding(10)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color(.colorBgLight))
                    .cornerRadius(10)
                HorizontalAvatarWithName(imageName: "CoverShoes", itemName:"Shoes")
                    .padding(10)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color(.colorBgLight))
                    .cornerRadius(10)
                HorizontalAvatarWithName(imageName: "CoverBag", itemName:"Bag")
                    .padding(10)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color(.colorBgLight))
                    .cornerRadius(10)
                HorizontalAvatarWithName(imageName: "CoverAccesories", itemName:"Coolers")
                    .padding(10)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color(.colorBgLight))
                    .cornerRadius(10)
            }
            .padding(.horizontal,30)
        }.padding(.vertical,50)
        Spacer()
    }
}

#Preview {
    ListCategoriesView()
}
