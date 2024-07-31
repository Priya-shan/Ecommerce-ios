//
//  EcommerceApp.swift
//  Ecommerce
//
//  Created by Shanmuga Priya M on 22/07/24.
//

import SwiftUI
import ComposableArchitecture
@main
struct EcommerceApp: App {
    var body: some Scene {
        WindowGroup {
//            HomePageView(store: Store(initialState: HomePageFeature.State(), reducer: {HomePageFeature()}))
            AppView(store: Store(initialState: AppFeature.State(), reducer: {
                AppFeature()
            }))
        }
    }
}
