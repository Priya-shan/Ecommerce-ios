import SwiftUI
import ComposableArchitecture

struct AppView: View {
    let store: StoreOf<AppFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack(spacing: 0) {
                switch viewStore.selectedTab{
                case .homeTab:
                    HomeNavigationView(
                        store: self.store.scope(
                            state: \.homeNavigation,
                            action: AppFeature.Action.homeNavigation
                        )
                    )
                case .profileTab:
                    ProfileNavigationView()
                case .notificationsTab:
                    HStack{
                        Text("Notification Tab")
                    }
                case .ordersTab:
                    HStack{
                        Text("Orders Tab")
                    }
                }

                if viewStore.isBottomBarVisible {
                    BottomTabBarView(
                        store: self.store.scope(
                            state: \.bottomTabBarState,
                            action: AppFeature.Action.bottomTabBarAction
                        )
                    )
                    .frame(maxHeight: 30, alignment: .bottom)
                    .padding(.top,40)
                    .background(Color("MildWhite"))
                }
            }
            .onAppear {
                // Any additional setup on appear
            }
            .ignoresSafeArea()
            .background(Color("MildWhite"))
        }
    }
}

#Preview {
    AppView(store: Store(initialState: AppFeature.State(), reducer: {
        AppFeature()
    }))
}
