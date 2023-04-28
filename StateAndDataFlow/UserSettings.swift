//
//  UserSettings.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import Foundation

final class UserSettings: ObservableObject {

    @Published var user = User()
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isLoggIn = false
}
