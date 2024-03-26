//
//  SearchResultsView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/24/24.
//

import SwiftUI

//enum LocationResultsViewConfig {
//    case ride
//    case savedLocations(SavedLocationOptions)
//}

struct SearchResultsView: View {
    //let config: LocationResultsViewConfig
    
//    @EnvironmentObject var viewModel: LocationSearchViewModel
//    @Binding var show: Bool
    
    // mock search results
    let searchResults: [SearchResult] = mockSearchResults
    @Binding var selectedAddress: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                ForEach(searchResults, id: \.self) { (result: SearchResult) in
                    let cellAddress = "\(result.title), \(result.subtitle)"
                    
                    SearchResultCellView(title: result.title,
                                         subtitle: result.subtitle,
                                         isSelected: selectedAddress == cellAddress,
                                         selectedAddress: $selectedAddress)
                }
            }
        }
        .background(.white)
        .frame(width: UIScreen.main.bounds.width)
    }
}


//MARK: - Mock search results
struct SearchResult: Hashable {
    let title: String
    let subtitle: String
}

// Mock data for demonstration
let mockSearchResults = [
    SearchResult(title: "12 Niles Rd", subtitle: "Austin, TX"),
    SearchResult(title: "1201 San Jacinto Blvd", subtitle: "Austin, TX"),
    SearchResult(title: "1202 E 2nd St", subtitle: "Austin, TX"),
    SearchResult(title: "120 E 4th St", subtitle: "Austin, TX"),
    SearchResult(title: "12 Sunset Trail", subtitle: "Austin, TX"),
    SearchResult(title: "123 W 6th St", subtitle: "Austin, TX"),
    SearchResult(title: "123 Red River St", subtitle: "Austin, TX"),
    SearchResult(title: "12300 Hymeadow Dr", subtitle: "Austin, TX"),
    SearchResult(title: "123 E North Loop Blvd", subtitle: "Austin, TX")
]

#Preview {
    SearchResultsView(selectedAddress: .constant("1202 E 2nd St, Austin, TX"))
}
