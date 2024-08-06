//
//  ContentView.swift
//  Velocidade Watch App
//
//  Created by Samuel Brati Favarin on 02/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var locationManager = LocationManager()
    
    var body: some View {
        TabView {
            SpeedView(
                speed: locationManager.kmhSpeed
            ).tag(0)
            SpeedView(
                speed: locationManager.msSpeed,
                unit: "m/s"
            ).tag(1)
            AltitudeView(
                altitude: locationManager.altitude
            ).tag(2)
        }
        .tabViewStyle(PageTabViewStyle())
    }

}

#Preview {
    ContentView()
}
