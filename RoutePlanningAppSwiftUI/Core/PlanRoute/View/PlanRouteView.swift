//
//  PlanRouteView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct PlanRouteView: View {
    @Binding var showPlanRoute: Bool
    @State private var address = ""
    @State private var routeSelected = false
    
    var body: some View {
        VStack {
            VStack {
                // top buttons
                HStack(){
                    // upload file
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.up.doc")
                            .padding(6)
                            .font(.system(size: 30))
                            .foregroundStyle(.indigo)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                    
                    // exit button
                    Button{
                        showPlanRoute.toggle()
                    } label: {
                        Image(systemName: "x.circle")
                            .padding(6)
                            .font(.system(size: 32))
                            .foregroundStyle(Color(.systemGray2))
                    }
                    .padding(.horizontal, 6)
                }
                
                // logic for text
                if !routeSelected {
                    Text("No route selected")
                        .font(.title2)
                        .foregroundStyle(Color(.systemGray))
                        .padding(.bottom)
                }
                
                
                Divider()
                    
                AddressScrollView(address: $address)
            }
            .padding(.top, 40)
            
            VStack(spacing: 20){
                Divider()
                    .padding(.top, -8)
                
                PlusMinusButton()
                
                // calculate route button
                Button {
                    
                } label: {
                    Text("Calculate Route")
                        .modifier(StandardButtonModifier())
                        .padding(.bottom, 60)
                }
            }
        }
        .ignoresSafeArea()
        .frame(width: .infinity)
        .background(Color(.secondarySystemBackground))
    }
}

#Preview {
    PlanRouteView(showPlanRoute: .constant(true))
}
