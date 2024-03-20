//
//  PlanRouteViewModel.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/19/24.
//

import SwiftUI

class PlanRouteViewModel: ObservableObject {
    @Published var addresses = Array(repeating: Address(id: UUID(), address: ""), count: 5)

    func addAddressTextField() {
        addresses.append(Address(id: UUID(), address: ""))
    }
    
    func resetAddresses() {
        addresses = Array(repeating: Address(id: UUID(), address: ""), count: 5)
    }
    
    func removeAddress(at index: Int) {
        addresses.remove(at: index)
    }
    
    func removeLastAddress() {
        if !addresses.isEmpty {
            addresses.removeLast()
        }
    }
    
    func submitAddresses() {
        // logic to submit addresses for route planning
        print("Submitted address: \(addresses)")
    }
}

struct Route {
    var title: String
    var addresses: [String]
}

struct Address: Identifiable {
    let id: UUID
    var address: String
}
