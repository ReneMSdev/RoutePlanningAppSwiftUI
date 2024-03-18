//
//  PlanRouteButtonView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct PlanRouteButtonView: View {
    @Binding var showPlanRoute: Bool
    
    var body: some View {
        Button(action:{
            showPlanRoute.toggle()
        }) {
            Image(systemName: "car.fill")
                .padding(15)
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(Circle().fill(Color.indigo))
                .shadow(radius: 10)
        }
    }
}

#Preview {
    PlanRouteButtonView(showPlanRoute: .constant(false))
}
