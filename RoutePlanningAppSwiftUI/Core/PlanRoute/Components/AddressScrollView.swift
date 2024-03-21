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
                    ForEach(Array(viewModel.addresses.enumerated()), id: \.element.id) { index, _ in
                        TextField("Enter address", text: Binding(
                            get: { self.viewModel.addresses[index].address },
                            set: { self.viewModel.addresses[index].address = $0 }
                        ))
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
        DispatchQueue.main.async {
            viewModel.addresses.remove(atOffsets: offsets)
        }
    }
}

#Preview {
    AddressScrollView(viewModel: PlanRouteViewModel())
}
