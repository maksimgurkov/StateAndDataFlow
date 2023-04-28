//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Максим Гурков on 28.04.2023.
//

import SwiftUI

class DataManager {
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func loudUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func clear(userManager: UserSettings) {
        userManager.user.flag = false
        userManager.user.name = ""
        userData = nil
    }
}
