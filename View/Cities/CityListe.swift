//
//  DetayView.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 9.02.2024.
//

import SwiftUI

struct CityListe: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredCities : [City] {
        modelData.cities.filter { city in
            (!showFavoritesOnly || city.isFavorite)
            
        }
    }
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                ForEach(filteredCities, id: \.self){
                    city in
                    NavigationLink {
                        CityDetail(city: city)
                    } label: {
                        CityRow(city: city)
                    }
                }
            }
            .animation(.bouncy, value: filteredCities)
            .navigationTitle("ŞEHİRLER")
        } detail: {
            Text("Bilgi Almak İstediğiniz Şehri Seçiniz!")
        }
        
        
    }
}

#Preview {
    CityListe()
        .environment(ModelData())
}
