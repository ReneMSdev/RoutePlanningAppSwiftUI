//
//  SideMenuButton.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct SideMenuButton: View {
    @Binding var showSideMenu: Bool
    
    var body: some View {
        Button (action: {
            showSideMenu.toggle()
        }) {
            Image(systemName: "line.horizontal.3")
                .padding(12)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .background(.indigo)
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.5), radius: 6)
        }
    }
}

#Preview {
    SideMenuButton(showSideMenu: .constant(false))
}
