//
//  HomeNavigationView.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//


import SwiftUI
import ComposableArchitecture

struct HomeNavigationView: View {
    let store:StoreOf<HomeNavigationFeature>
    var body: some View {
        NavigationStackStore(self.store.scope(state: \.homeNavigationPaths, action: {.homeNavigationPaths($0)})) {
            WithViewStore(store, observe: {$0}) { viewStore in
                
                HomePageView(store: store.scope(state: \.homePage, action: {.homePageFeature($0)}))
                    
            }
        } destination: { state in
            
            switch state {
            case .listCategories(_):
                CaseLet(/HomeNavigationFeature.HomeNavigationPaths.State.listCategories, action: HomeNavigationFeature.HomeNavigationPaths.Action.listCategories) { store in
                    ListCategoriesView()
                }
//                
//            case .coffeeOrder(_):
//                CaseLet(/HomeNavigationsFeature.HomePaths.State.coffeeOrder, action: HomeNavigationsFeature.HomePaths.Action.coffeeOrder) { store in
//                    CoffeeOrdersView(store:store)
//                }
            }
        }
    }

}

#Preview {
    HomeNavigationView(store: Store(initialState: HomeNavigationFeature.State(), reducer: {
        HomeNavigationFeature()
    }))
}
