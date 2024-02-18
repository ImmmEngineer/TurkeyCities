//
//  CityList.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 12.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection : Tab = .featured
    enum Tab{
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            BolgeHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                                }
                .tag(Tab.featured)


            CityListe()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
