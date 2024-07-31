//
//  AvatarWithName.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//

import SwiftUI

struct VerticalAvatarWithName: View {
    var imageName: String
    var itemName: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            Text(itemName).fontWeight(.light)
        }.padding(.horizontal,5)
    }
}

#Preview {
    VerticalAvatarWithName(imageName: "CoverShorts", itemName:"Shorts")
}
