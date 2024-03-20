//
//  AddressScrollView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct AddressScrollView: View {
    @ObservedObject var viewModel: PlanRouteViewModel
    
    var body: some View {
        ScrollView {
            NavigationView {
                List {
                    ForEach($viewModel.addresses) { $address in
                        TextField("Enter address", text: $address.address)
                    }
                    .onDelete(perform: removeAddresses)
                }
                .listStyle(.plain)
            }
        }
        .padding(.top, -8)
        .background(.white)
        .id(viewModel.addresses.count)
    }
    
    func removeAddresses(at offsets: IndexSet) {
            viewModel.addresses.remove(atOffsets: offsets)
        }
}

#Preview {
    AddressScrollView(viewModel: PlanRouteViewModel())
}
