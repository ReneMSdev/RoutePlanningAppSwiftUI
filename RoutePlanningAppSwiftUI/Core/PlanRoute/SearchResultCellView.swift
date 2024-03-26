//
//  SearchResultCellView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/24/24.
//

import SwiftUI
import MapKit

struct SearchResultCellView: View {
    let title: String
    let subtitle: String
    let isSelected: Bool
    @Binding var selectedAddress: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(isSelected ? Color.blue.opacity(0.5) : Color.clear)
            
            HStack {
                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.indigo)
                    .accentColor(.white)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.body)
                    
                    Text(subtitle)
                        .font(.system(size: 15))
                        .foregroundColor(Color(.gray))
                    
                    Divider()
                }
                .padding(.leading, 8)
                .padding(.vertical, 8)
                
                Spacer()
            }
            .padding(.leading)
        }
        .onTapGesture {
            self.selectedAddress = "\(title), \(subtitle)"
        }
    }
}

#Preview {
    SearchResultCellView(title: "title", subtitle: "subtitle", isSelected: false, selectedAddress: .constant("123 Main St, Austing TX"))
}
