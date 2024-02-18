//
//  CityRow.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 12.02.2024.
//

import SwiftUI

struct CityRow: View {
    var city: City
    var body: some View {
        HStack {
            city.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(city.il_adi)
            Spacer()
            if city.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        
        
    }
}

#Preview{
    let cities = ModelData().cities
    return Group{
        CityRow(city: cities[0])
        CityRow(city: cities[1])
    }
}

