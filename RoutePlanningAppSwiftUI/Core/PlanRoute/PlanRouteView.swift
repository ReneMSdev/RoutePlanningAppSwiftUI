//
//  PlanRouteView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/24/24.
//

import SwiftUI

struct PlanRouteView: View {
    @FocusState private var searchFieldFocused: Bool
    @State private var selectedAddress = ""
    
    var body: some View {
        // header
        // search bar
        // "upload a file button"
        VStack {
            HStack {
                TextField("\(Image(systemName: "magnifyingglass")) Search for an address", text: $selectedAddress)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(Color.indigo.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .focused($searchFieldFocused)
                
                Button {
                    // add address
                } label: {
                    Image(systemName: "plus")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.indigo)
                }
            }
            .padding(.top, 10)
            .padding()
            
            Divider()
            
            if searchFieldFocused && !selectedAddress.isEmpty {
                SearchResultsView(selectedAddress: $selectedAddress)
            }
            
            // calculate route button
            Spacer()
        }
        .animation(.easeInOut(duration: 0.3))
    }
}

#Preview {
    PlanRouteView()
}
