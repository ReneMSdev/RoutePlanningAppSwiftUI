//
//  AddressScrollView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct AddressScrollView: View {
    @Binding var address: String
    
    var body: some View {
        ScrollView {
            NavigationView {
                Form() {
                    Section(header: Text("Addresses")) {
                        TextField("Enter address", text: $address)
                        
                        TextField("Enter address", text: $address)
                        
                        TextField("Enter address", text: $address)
                        
                        TextField("Enter address", text: $address)
                        
                        TextField("Enter address", text: $address)
                    }
                }
            }
        }
        .padding(.top, -8)
    }
}

#Preview {
    AddressScrollView(address: .constant(""))
}
