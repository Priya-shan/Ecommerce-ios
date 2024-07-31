//
//  ProductReviewView.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//

import SwiftUI

struct ProductReviewView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Shipping & Returns")
                    .fontWeight(.bold)
                    .padding(.vertical,5)
                Spacer()
            }
            HStack{
                Text("Free standard shipping and free 60-day return")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.vertical,5)
                Spacer()
            }
           
        }
        VStack{
            HStack{
                Text("Reviews")
                    .fontWeight(.bold)
                    .padding(.vertical,5)
                Spacer()
            }
            HStack{
                Text("4.5 Ratings")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical,5)
                Spacer()
            }
            HStack{
                Text("213 Reviews")
                    .foregroundColor(.gray)
                    .padding(.vertical,5)
                Spacer()
            }
        }
        VStack{
            ReviewComponent(imageName:"ProfileIcon",userName:"Alex Morgan",rating:3,review:"Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.")
            ReviewComponent(imageName:"ProfileIcon",userName:"Alex Morgan",rating:3,review:"Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.")
        }
        
    }
}

#Preview {
    ProductReviewView()
}
