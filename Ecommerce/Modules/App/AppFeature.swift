import Foundation
import ComposableArchitecture

struct AppFeature: Reducer {
    struct State: Equatable {
        var selectedTab: BottomTabBarFeature.Tabs = .homeTab
        var isBottomBarVisible = true
        var homeNavigation = HomeNavigationFeature.State()
        var profileNavigation = ProfileNavigationFeature.State()
        var bottomTabBarState = BottomTabBarFeature.State()
    }

    enum Action {
        case homeNavigation(HomeNavigationFeature.Action)
        case profileNavigation(ProfileNavigationFeature.Action)
        case bottomTabBarAction(BottomTabBarFeature.Action)
    }

    var body: some ReducerOf<Self> {
        Scope(state: \.homeNavigation, action: /Action.homeNavigation) {
            HomeNavigationFeature()
        }
        Scope(state: \.profileNavigation, action: /Action.profileNavigation) {
            ProfileNavigationFeature()
        }
        Scope(state: \.bottomTabBarState, action: /Action.bottomTabBarAction) {
            BottomTabBarFeature()
        }
        Reduce { state, action in
            switch action {
            case let .bottomTabBarAction(.delegate(.setTabIndex(tabItem))):
                print(".setTabIndex in AppFeature (parent)")
                state.selectedTab = tabItem
                return .none
            case .profileNavigation(_):
                return .none
            case .bottomTabBarAction(_):
                return .none
            case .homeNavigation(_):
                return .none
            }
        }
    }
}
