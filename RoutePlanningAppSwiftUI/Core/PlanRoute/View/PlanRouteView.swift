//
//  PlanRouteView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct PlanRouteView: View {
    @Binding var address: String
    
    @State private var routeSelected = false
    @Environment(\.presentationMode) var PlanRoutePresentationMode
    
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
                        PlanRoutePresentationMode.wrappedValue.dismiss()
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
                    VStack(spacing: 8){
                        Text("No route selected")
                            .font(.title2)
                            .foregroundStyle(Color(.systemGray))
                        
                        
                        Text("Enter addresses manually or upload a file")
                            .font(.subheadline)
                            .foregroundStyle(Color(.systemGray))
                    }
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
        .background(Color(.secondarySystemBackground))
        .transition(.move(edge: .bottom))
    }
}

#Preview {
    PlanRouteView(address: .constant(""))
}
