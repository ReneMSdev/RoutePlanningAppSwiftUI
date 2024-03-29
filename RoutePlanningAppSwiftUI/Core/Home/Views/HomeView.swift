//
//  HomeView.swift
//  RoutePlanningAppSwiftUI
//
//  Created by Rene Salomone on 3/18/24.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @State private var camera: MapCameraPosition = .automatic
    @State private var showSideMenu = false
    @State private var showPlanRoute = false
    @State private var showRoutePreview = true
    @State private var address = ""
    
    let location = CLLocationCoordinate2D(
        latitude: 13.686252,
        longitude: 100.566762)
    
    let location2 = CLLocationCoordinate2D(
        latitude: 13.747849,
        longitude: 100.506040)
    
    let location3 = CLLocationCoordinate2D(
        latitude: 13.751326,
        longitude: 100.542762)
    
    var body: some View {
        ZStack(alignment: .topLeading){
//            Rectangle()
//                .fill(.blue)
//                .frame(width: .infinity, height: .infinity)
//                .ignoresSafeArea()
            
            // MAP, BOTTOM SHEET & BUTTON
            Map(position: $camera) {
                Marker("Temple",
                       systemImage: "house.fill",
                       coordinate: location)
                Marker("address",
                       systemImage: "house.fill",
                       coordinate: location2)
                Marker("address2",
                       systemImage: "house.fill",
                       coordinate: location3)
            }
            .fullScreenCover(isPresented: $showPlanRoute, content: {
                PlanRouteView()
            })
            
            VStack(alignment: .leading) {
                // SIDE MENU BUTTON
                SideMenuButton(showSideMenu: $showSideMenu)
                    .padding(20)
                
                Spacer()
                
                // PlanRoute Button
                RoutePreviewView(showPlanRoute: $showPlanRoute)
            }
            
        }
    }
}
    

#Preview {
    HomeView()
}
