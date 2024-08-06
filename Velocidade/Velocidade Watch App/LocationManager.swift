//
//  SpeedCore.swift
//  Velocidade Watch App
//
//  Created by Samuel Brati Favarin on 03/08/2024.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private var locationManager: CLLocationManager = CLLocationManager()
    
    @Published var msSpeed: Double = 0.0
    @Published var kmhSpeed: Double = 0.0
    @Published var altitude: Double = 0.0
    @Published var isLocationAuthorized: Bool = false
    
    let KMH_INDEX: Double = 3.6
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            self.msSpeed = location.speed
            self.kmhSpeed = location.speed * KMH_INDEX
            self.altitude = location.altitude
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse, .authorizedAlways:
            self.locationManager.startUpdatingLocation()
            self.isLocationAuthorized = true
        default:
            self.locationManager.stopUpdatingLocation()
            self.isLocationAuthorized = false
        }
    }
}

