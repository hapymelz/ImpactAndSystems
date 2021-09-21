//
//  ImpactDetailView.swift
//  ImpactAndSystems
//
//  Created by Numbers, Katherine on 9/21/21.
//

import SwiftUI
import MapKit

struct ImpactDetailView: View
{
    @State private var impact : ComputingImpact
    
    var body: some View
    {
        VStack
        {
            Map(coordinateRegion: $impact.location)
                .frame(height: 400)
            Text(impact.details)
        }
    }
    init(with impact: ComputingImpact)
    {
        _impact = State(initialValue: impact)
    }
}

struct ImpactDetailView_Previews: PreviewProvider
{
    static var previews: some View
    {
        let tempImpact = ComputingImpact(title: "yes", details: "ayooo fam", location: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.5875, longitude: -111.8684), span: (MKCoordinateSpan(latitudeDelta: 0.0010, longitudeDelta: 0.0010))))
        ImpactDetailView(with: tempImpact)
    }
}
