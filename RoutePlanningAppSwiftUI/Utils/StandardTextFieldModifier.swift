//
//  StandardTextFieldModifier.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct StandardTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
