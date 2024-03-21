//
//  PlanRouteViewModel.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/19/24.
//

import SwiftUI

class PlanRouteViewModel: ObservableObject {
    @Published var addresses: [Address]
    
    init() {
        self.addresses = (0..<5).map { _ in Address(address: "") }
    }

    func addAddressTextField() {
        addresses.append(Address(address: ""))
    }
    
    func resetAddresses() {
        self.addresses = (0..<5).map { _ in Address(address: "") }
    }
    
    func removeAddress(at index: Int) {
        addresses.remove(at: index)
    }
    
    func removeLastAddress() {
        if addresses.count > 5 {
            addresses.removeLast()
        }
    }
    
    func submitAddresses() {
        // logic to submit addresses for route planning
        print("Submitted address: \(addresses)")
    }
}

extension PlanRouteViewModel {
    func updateAddress(at index: Int, with newAddress: String) {
            // Check to ensure index is within bounds to avoid out-of-range errors
            guard addresses.indices.contains(index) else { return }
            addresses[index].address = newAddress
        }
}

struct Route {
    var title: String
    var addresses: [String]
}

struct Address: Identifiable {
    let id: UUID = UUID()
    var address: String
}
