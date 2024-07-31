//
//  BottomTabBar.swift
//  Coffee
//
//  Created by Shanmuga Priya M on 17/10/23.
//

import SwiftUI
import ComposableArchitecture

struct BottomTabBarView: View {
    let store:StoreOf<BottomTabBarFeature>
    var body: some View {
        WithViewStore(self.store, observe: {$0}){ viewStore in
            VStack(spacing: 0) {
//                switch viewStore.selectedTab {
//                case .homeTab:
//                    HomeNavigationsView(store: self.store.scope(state: \.homeNavigation, action: {.homeNavigation($0)}))
//                case .likedItemsTab:
//                    LikedItemsView(store: self.store.scope(state: \.likedItems, action: {.likedItems($0)}))
//                case .ordersTab:
//                    OrdersView()
//                case .notificationsTab:
//                    NotificationsView()
//                }
//                if(viewStore.isBottomBarVisible){44r
                    HStack {
                        Spacer()
                        Image("IconHome")
                            .resizable()
                            .frame(width:50,height: 50)
                            .padding(10)
                            .foregroundColor(.black)
                            .onTapGesture {
                                viewStore.send(.setTabIndex(.homeTab))
                            }
                        Spacer()
                        Image("IconNotification")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .foregroundColor(.black)
                            .onTapGesture {
                                viewStore.send(.setTabIndex(.notificationsTab))
                            }
                        Spacer()
                        Image("IconOrders")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .foregroundColor(.black)
                            .onTapGesture {
                                viewStore.send(.setTabIndex(.ordersTab))
                            }
                        Spacer()
                        Image("IconProfile")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .foregroundColor(.black)
                            .onTapGesture {
                                viewStore.send(.setTabIndex(.profileTab))
                            }
                        Spacer()
                    }
                    .frame(maxHeight: 70, alignment: .bottom)
                    .background(Color("MildWhite"))
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30))
                }
//                }
            .onAppear(){
//                viewStore.send(.testing)
            }
            .background(Color("MildWhite"))
        }
    }
}


#Preview {
    BottomTabBarView(store: Store(initialState: BottomTabBarFeature.State(), reducer:{ BottomTabBarFeature()._printChanges()}))
}
