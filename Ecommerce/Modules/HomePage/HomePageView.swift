import SwiftUI
import ComposableArchitecture

struct HomePageView: View {
    let store: StoreOf<HomePageFeature>
    @State private var selectedOption = 0
    @State private var searchText = ""
    var body: some View {
        WithViewStore(self.store, observe: {$0}){
            viewStore in
            ScrollView(.vertical){
                VStack{
                    HStack{
                        Image("ProfileIcon")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 45, height: 45)
                        Spacer()
                        Image("AppIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130)
                        Spacer()
                        Image("CartIcon")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 45, height: 45)
                        
                    }
                    .padding(.horizontal,30)
                    HStack {
                        TextField("Search...", text: $searchText)
                            .padding(20)
                            .padding(.horizontal, 25)
                            .frame(width: .infinity,height: 43)
                            .background(Color(.colorBgLight))
                            .foregroundColor(.black)
                            .cornerRadius(20)
                        
                            .overlay(
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.black)
                                        .frame(minWidth: 0, maxWidth: .infinity,
                                               alignment: .leading)
                                        .padding(.leading, 15)
                                    
                                    if !searchText.isEmpty {
                                        Button(action: {
                                            self.searchText = ""
                                        }) {
                                            Image(systemName: "multiply.circle.fill")
                                                .foregroundColor(.gray)
                                                .padding(.trailing, 8)
                                        }
                                    }
                                }
                            )
                            .padding(.horizontal, 10)
                    }
                    .padding()
                    
                    VStack{
                        HStack{
                            Text("Categories")
                                .fontWeight(.bold)
                            Spacer()
                            Text("See All")
                                .fontWeight(.light)
                            
                        }.padding(.horizontal,30)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                VerticalAvatarWithName(imageName: "CoverHoodie", itemName:"Hoodie")
                                VerticalAvatarWithName(imageName: "CoverShorts", itemName:"Shorts")
                                VerticalAvatarWithName(imageName: "CoverShoes", itemName:"Shoes")
                                VerticalAvatarWithName(imageName: "CoverBag", itemName:"Bag")
                                VerticalAvatarWithName(imageName: "CoverAccesories", itemName:"Coolers")
                                VerticalAvatarWithName(imageName: "CoverShorts", itemName:"Shorts")
                                
                               
                            }
                        }
                        .padding(.leading,25)
                        .padding(.vertical,10)
                        
                    }
                    VStack{
                        HStack{
                            Text("Top Selling")
                                .fontWeight(.bold)
                            Spacer()
                            Text("See All")
                                .fontWeight(.light)
                            
                        }.padding(.horizontal,30)
                            .padding(.vertical,10)
                        ScrollView(.horizontal){
                            HStack{
                                ProductCard(imageName: "SampleProduct", productName: "Men's Jacket", productPrice: 999.99)
                                ProductCard(imageName: "SampleProduct", productName: "Men's Jacket", productPrice: 999.99)
                                ProductCard(imageName: "SampleProduct", productName: "Men's Jacket", productPrice: 999.99)
                            }
                        }.padding(.leading,25)
                        
                    }
                    VStack{
                        HStack{
                            Text("New In")
                                .fontWeight(.bold)
                            Spacer()
                            Text("See All")
                                .fontWeight(.light)
                            
                        }.padding(.horizontal,30)
                            .padding(.vertical,10)
                        ScrollView(.horizontal){
                            HStack{
                                ProductCard(imageName: "SampleProduct", productName: "Men's Jacket", productPrice: 999.99)
                                ProductCard(imageName: "SampleProduct", productName: "Men's Jacket", productPrice: 999.99)
                                ProductCard(imageName: "SampleProduct", productName: "Men's Jacket", productPrice: 999.99)
                            }
                        }.padding(.leading,25)
                        
                    }
                    Spacer()
                    ForEach(viewStore.productList){
                        product in
                        NavigationLink{
                            
                        }label: {
                            HStack{
                                Image(systemName: "calendar")
                                Text(product.name)
                                Text(product.category)
                            }
                        }
                    }
                    Button("Get Products") {
                        viewStore.send(.getProductList)
                    }
                }
            }
        }
    }
}

#Preview {
    HomePageView(store: Store(initialState: HomePageFeature.State(), reducer: {HomePageFeature()}))
}
