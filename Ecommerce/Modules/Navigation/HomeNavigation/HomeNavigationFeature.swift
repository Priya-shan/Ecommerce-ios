//
//  HomeNavigationFeature.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 29/07/24.
//
import Foundation
import ComposableArchitecture

struct HomeNavigationFeature:Reducer{

    struct State :Equatable {
      
        var homeNavigationPaths = StackState<HomeNavigationPaths.State>()
        var homePage = HomePageFeature.State()
    }
    enum Action:Equatable{
        case homeNavigationPaths(StackAction<HomeNavigationPaths.State,HomeNavigationPaths.Action>)
       
        case homePageFeature(HomePageFeature.Action)
    }
    struct HomeNavigationPaths:Reducer{
        enum State:Equatable{
            case listCategories(ListCategoriesFeature.State)
//            case coffeeOrder(CoffeeOrderFeature.State)
//            case deliveryMap(DeliveryMapFeature.State)
        }
        enum Action:Equatable{
            case listCategories(ListCategoriesFeature.Action)
//            case coffeeOrder(CoffeeOrderFeature.Action)
//            case deliveryMap(DeliveryMapFeature.Action)
        }
        var body: some ReducerOf<Self>{
            Scope(state: /State.listCategories, action: /Action.listCategories){
                ListCategoriesFeature()
            }
//            Scope(state: /State.coffeeOrder, action: /Action.coffeeOrder){
//                CoffeeOrderFeature()
//            }
        }
    }
    var body: some ReducerOf<Self>{
        //root
        Scope(state: \.homePage, action: /Action.homePageFeature){
            HomePageFeature()
        }
        Reduce{ state, action in
            switch action{
          
            case .homeNavigationPaths(_):
                return .none
//            case .homePageFeature(.delegate(.hideBottomBar)):
//                print(".homeFeature(.delegate(.hideBottomBar))")
//                return .none
//            case .homePageFeature(.delegate(.showBottomBar)):
//                print(".homeFeature(.delegate(.showBottomBar))")
//                return .none
//            case .homePageFeature(.delegate(.testing)):
//                return .none
            case .homePageFeature(_):
                print(".homeFeature (Home nav feature)")
                return .none
            }
        }
        .forEach(\.homeNavigationPaths, action: /Action.homeNavigationPaths){
            HomeNavigationPaths()
        }
    }
}
