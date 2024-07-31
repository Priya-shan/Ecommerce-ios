import SwiftUI

struct ProductCard: View {
    var imageName: String
    var productName: String
    var productPrice: Double

    @State private var isLiked: Bool = false

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Text(productName)
                    .font(.headline)
                    .padding(.top, 5)
                    .frame(width: 150, alignment: .leading)
                
                Text("₹\(String(format: "%.2f", productPrice))")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 2)
                    .frame(width: 150, alignment: .leading)
            }
            .frame(width: 150)
            .padding()
            .background(Color(.colorBgLight))
            .cornerRadius(10)
            
            Button(action: {
                isLiked.toggle()
            }) {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(isLiked ? .red : .gray)
                    .padding(10)
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(imageName: "SampleProduct", productName: "Men's Jacket", productPrice: 999.99)
            .previewLayout(.sizeThatFits)
    }
}
