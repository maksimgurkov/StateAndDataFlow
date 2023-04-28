//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    
    private let user = DataManager.shared.loudUser()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(UserSettings(user: user))
        }
    }
}
