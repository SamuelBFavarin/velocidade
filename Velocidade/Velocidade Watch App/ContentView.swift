//
//  ContentView.swift
//  Velocidade Watch App
//
//  Created by Samuel Brati Favarin on 02/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            SpeedView(
                speed: 72.2
            ).tag(0)
            SpeedView(
                speed: 102.3,
                unit: "m/s"
            ).tag(1)
            AltitudeView(
                altitude: 23
            ).tag(2)
        }
        .tabViewStyle(PageTabViewStyle())
    }

}

#Preview {
    ContentView()
}
