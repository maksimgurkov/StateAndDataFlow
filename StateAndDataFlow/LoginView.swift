//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $userSettings.user.name)
                    .multilineTextAlignment(.center)
                Text("\(userSettings.user.name.count)")
                    .foregroundColor(userSettings.user.name.count < 3 ? .red : .green)
            }
            .padding(.horizontal, 70)
            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(userSettings.user.name.count < 3)
        }
    }
    
    private func login() {
        if !userSettings.user.name.isEmpty {
            userSettings.user.isLoggedIn.toggle()
            DataManager.shared.save(user: userSettings.user)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
