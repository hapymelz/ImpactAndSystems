//
//  ImpactData.swift
//  ImpactAndSystems
//
//  Created by Numbers, Katherine on 9/21/21.
//

import MapKit

let definitions = Bundle.main.url(forResource: "computing_impact", withExtension: "pdf")!

func loadImpactData() -> [ComputingImpact]
{
    var impactItems : [ComputingImpact] = []
    
    let regions : [CLLocationCoordinate2D] =
    [
        CLLocationCoordinate2D(latitude: 55.3781, longitude: -3.4360),
        CLLocationCoordinate2D (latitude: 37.7757, longitude: -122.4180),
        CLLocationCoordinate2D (latitude: 42.9207, longitude: -78.8609),
        CLLocationCoordinate2D (latitude: 51.5074, longitude: -0.1278),
        CLLocationCoordinate2D (latitude: 37.8609, longitude: -121.9624)
    ]
    
    let titles : [String] =
    [
        "United Kingdom",
        "San Francisco, California",
        "Buffalo, New York",
        "London, England",
        "Los Gatos, California"
        
    ]
    
    let details : [String] =
    [
        "In the UK, electric cars are becoming more prominent, where they may become cheaper than petrol cars by 2024. There are also more electric charging stations than gas stations. These electric cars are also safer in theory because of the safety code in them.",
        "Technology and robots are taking over jobs that regular people can do. Uber is looking into using self-driving cars instead of real drivers to taxi people around. Because Uber is aiming to replace every driver with a self-driving car, there are some ethical problems arising. ",
        "In March 2021, there was a ransomware attack on Buffalo Public Schools in New York. It shut down the entire school system and may have leaked all of its students and faculty information.",
        "In 2011, employees of a newspaper company in London were charged with hacking people’s phones to get information from their voicemails. Among its victims were Prince William and teenager Milly Dowler, who was abducted and murdered.",
        "Netflix technology has been getting better and better since they started out as a DVD sharing service and evolved into a streaming service. With the use of their technology, people can watch movies and tv shows wherever they want."
    ]
   
    for index in 0..<5
    {
        let currentLocation = MKCoordinateRegion(center: regions[index], span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
        let currentImpact = ComputingImpact(title: titles[index], details: details[index], location: currentLocation)
        impactItems.append(currentImpact)
    }
    
    return impactItems
}
