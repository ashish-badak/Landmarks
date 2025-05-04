//
//  Landmark.swift
//  Landmarks
//
//  Created by Ashish Badak on 03/05/25.
//

import Foundation
import MapKit

struct Landmark: Decodable, Identifiable, Hashable {
    struct Coordinates: Decodable, Hashable {
        let longitude: Double
        let latitude: Double
    }
    
    let id: Int
    let category: String
    
    let name: String
    let description: String
    let imageName: String
    
    let park: String
    let state: String
    private let coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
