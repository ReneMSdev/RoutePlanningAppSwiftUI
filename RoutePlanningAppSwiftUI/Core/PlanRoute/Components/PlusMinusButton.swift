//
//  PlusMinusButton.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI

struct PlusMinusButton: View {
    var body: some View {
        HStack() {
            Button (action:{
                //minus
                print("minus tapped")
            }){
                Image(systemName: "minus")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemIndigo))
                    .padding(.horizontal, 20)
                    .frame(height: 40)
            }
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            
            Button(action: {
                //plus
                print("plus tapped")
            }) {
                Image(systemName: "plus")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemIndigo))
                    .padding(.horizontal, 20)
                    .frame(height: 40)
            }
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    PlusMinusButton()
}
