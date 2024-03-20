//
//  PlanRouteView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct PlanRouteView: View {
    @StateObject var viewModel = PlanRouteViewModel()
    @State private var routeSelected = false
    @Environment(\.presentationMode) var PlanRoutePresentationMode
    
    @State private var routeName = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                // top buttons
                HStack(){
                    Spacer()
                    
                    // exit button
                    Button{
                        PlanRoutePresentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "x.circle")
                            .padding(6)
                            .font(.system(size: 28))
                            .foregroundStyle(Color(.systemGray2))
                    }
                    .padding(.horizontal, 8)
                    .padding(.bottom, -10)
                }
                
                // logic for text
                if viewModel.addresses.allSatisfy({ $0.address.isEmpty }) {
                    Text("No route selected")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.gray))
                        .padding(.leading,20)
                    
                } else {
                    TextField("Unnamed Route", text: $routeName)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color(.black))
                        .padding(.leading,20)
                }
                
                HStack(spacing: 4) {
                    Text("Enter addresses manually or")
                        .font(.subheadline)
                        .foregroundStyle(Color.gray)
                    
                    Button {
                        
                    } label: {
                        Text("upload a file")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.blue)
                    }
                }
                .padding(.leading, 20)
                .padding(.bottom, 10)
                
                
                
                Divider()
                    
                AddressScrollView(viewModel: viewModel)
            }
            .padding(.top, 40)
            
            VStack(spacing: 20){
                Divider()
                    .padding(.top, -8)
                
                PlusMinusButton(viewModel: viewModel)
                
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
    PlanRouteView()
}
