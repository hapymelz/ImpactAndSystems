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
                    Text("Coming Soon!")
                }
                Section(header: Text("Impacts"))
                {
                    ForEach(impacts.indices)
                    {
                        index in
                        
                        NavigationLink(destination: ImpactDetailView(with: impacts[index]), label: {Text(impacts[index].title)})
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
