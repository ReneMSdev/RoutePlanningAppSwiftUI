//
//  PlanRouteViewModel.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/19/24.
//

import SwiftUI

class PlanRouteViewModel: ObservableObject {
    @Published var addresses: [Address] = []

    func addAddressTextField() {
        addresses.append(Address(address: ""))
    }
    
    func resetAddresses() {
        addresses = []
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

struct Route {
    var title: String
    var addresses: [String]
}

struct Address: Identifiable {
    let id: UUID = UUID()
    var address: String
}
