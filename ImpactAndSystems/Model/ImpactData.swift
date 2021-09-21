//
//  ImpactData.swift
//  ImpactAndSystems
//
//  Created by Numbers, Katherine on 9/21/21.
//

import MapKit

func loadImpactData() -> [ComputingImpact]
{
    var impactItems : [ComputingImpact] = []
    
    let regions : [CLLocationCoordinate2D] =
    [
        CLLocationCoordinate2D(latitude: 55.3781, longitude: 3.4360),
        CLLocationCoordinate2D (latitude: 51.5074, longitude: 0.1278),
        CLLocationCoordinate2D (latitude: 42.9207, longitude: 78.8609),
        CLLocationCoordinate2D (latitude: 37.8609, longitude: 121.9624),
        CLLocationCoordinate2D (latitude: 37.7757, longitude: 122.4180)
    ]
    
    
    return impactItems
}
