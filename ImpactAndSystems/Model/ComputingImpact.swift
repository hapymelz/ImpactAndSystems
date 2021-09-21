//
//  ComputingImpact.swift
//  ImpactAndSystems
//
//  Created by Numbers, Katherine on 9/21/21.
//

import MapKit

struct ComputingImpact : Identifiable
{
    let id = UUID()
    let title : String
    let details : String
    var location : MKCoordinateRegion
    
}
