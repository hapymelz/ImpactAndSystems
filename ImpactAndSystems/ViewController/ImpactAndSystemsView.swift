//
//  ContentView.swift
//  ImpactAndSystems
//
//  Created by Numbers, Katherine on 9/15/21.
//

import SwiftUI

struct ImpactAndSystemsView: View
{
    private let impacts = loadImpactData()
    
    var body: some View
    {
        
        NavigationView
        {
            List
            {
                Section(header:Text("Systems"))
                {
                    NavigationLink("Definitions", destination: PDFKitView())
                }
                Section(header: Text("Impacts"))
                {
                    ForEach(impacts)
                    {
                        impact in
                        
                        NavigationLink(impact.title, destination: ImpactDetailView(with: impact))
                    }
                }
            }
        }
    }
}

 struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ImpactAndSystemsView()

    }
}
