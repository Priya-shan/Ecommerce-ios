//
//  Review.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//

import SwiftUI

struct ReviewComponent: View {
    var imageName: String
    var userName: String
    var rating:Int
    var review: String
    var body: some View {
        VStack{
            HStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                
                Text(userName)
                Spacer()
                Image("StarRating")
                    .resizable()
                    .frame(width: 90,height: 20)
                
            }
            HStack{
                Text(review)
                    .foregroundColor(Color(.gray))
                    .font(.subheadline)
                    .padding(.vertical,3)
                Spacer()
            }
            HStack{
                Text("12days ago")
                    .font(.subheadline)
                Spacer()
            }
           
            
           
            
        }
    }
}

#Preview {
    ReviewComponent(imageName:"ProfileIcon",userName:"Alex Morgan",rating:3,review:"Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.")
}
