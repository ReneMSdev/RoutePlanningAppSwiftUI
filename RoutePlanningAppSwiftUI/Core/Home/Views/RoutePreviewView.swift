//
//  RoutePreviewView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/19/24.
//

import SwiftUI

struct RoutePreviewView: View {
    @Binding var showPlanRoute: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                HStack {
                    // upload file
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.up.doc")
                            .padding(6)
                            .font(.system(size: 28))
                            .foregroundStyle(.indigo)
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                
                VStack(spacing: 8) {
                    Text("No route selected")
                        .font(.title2)
                    
                    Text("Upload a file or click plan route to get started")
                        .font(.subheadline)
                    
                }
                .padding(.bottom, 40)
                
                // plan route button
                HStack {
                    Spacer()
                    PlanRouteButtonView(showPlanRoute: $showPlanRoute)
                        .padding(.bottom, 60)
                    Spacer()
                }
            }
            .padding(.horizontal)
            .frame(maxHeight: 260)
            .background(Color(.white))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(color: Color.black.opacity(0.5), radius: 6)
        }
        .ignoresSafeArea()
    }
}


#Preview {
    RoutePreviewView(showPlanRoute: .constant(false))
}
