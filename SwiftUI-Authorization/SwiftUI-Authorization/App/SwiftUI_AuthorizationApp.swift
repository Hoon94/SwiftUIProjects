//
//  SwiftUI_AuthorizationApp.swift
//  SwiftUI-Authorization
//
//  Created by Daehoon Lee on 6/24/24.
//

import SwiftUI
import Firebase

@main
struct SwiftUI_AuthorizationApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
