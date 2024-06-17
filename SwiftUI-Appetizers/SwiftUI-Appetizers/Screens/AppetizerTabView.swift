//
//  AppetizerTabView.swift
//  SwiftUI-Appetizers
//
//  Created by Daehoon Lee on 4/15/24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
//    init() {
//        UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
//    }
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
                    Label("Home", systemImage: "house")
//                        .environment(\.symbolVariants, .none)
                }
            
            AccountView()
                .tabItem {
//                    Image(systemName: "person")
//                    Text("Account")
                    Label("Account", systemImage: "person")
//                        .environment(\.symbolVariants, .none)
                }
            
            OrderView()
                .tabItem {
//                    Image(systemName: "bag")
//                    Text("Order")
                    Label("Order", systemImage: "bag")
//                        .environment(\.symbolVariants, .none)
                }
                .badge(order.items.count)
        }
//        .tint(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView().environmentObject(Order())
}
