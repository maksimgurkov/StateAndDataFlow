//
//  ButtonLogOutView.swift
//  StateAndDataFlow
//
//  Created by Максим Гурков on 28.04.2023.
//

import SwiftUI

struct ButtonLogOutView: View {
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
    }
}

struct ButtonLogOutView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLogOutView(action: {})
    }
}
