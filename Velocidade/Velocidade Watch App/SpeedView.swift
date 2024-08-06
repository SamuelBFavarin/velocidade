//
//  SpeedView.swift
//  Velocidade Watch App
//
//  Created by Samuel Brati Favarin on 03/08/2024.
//

import SwiftUI

struct SpeedView: View {
    
    var speed: Double = 0.0
    var unit: String = "km/h"
    
    var body: some View {
        VStack {
            Text("Current Speed")
            Text(String(format: "%.2f", speed))
                .font(.system(size: 42, weight: .bold, design: .default))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Text(unit)
        }
        .padding()
    }
}

struct AltitudeView: View {

    var altitude: Double = 0.0
    var body: some View {
        VStack {
            Text("Current Altitude")
            Text(String(altitude))
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Meters")
        }
        .padding()
    }
}
