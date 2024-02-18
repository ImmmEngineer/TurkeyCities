//
//  BolgeRow.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 14.02.2024.
//

import SwiftUI

struct BolgeRow: View {
    
    var bolgeName : String
    var items : [City]
    var body: some View {
        VStack(alignment: .leading){
            Text(bolgeName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { city in
                        NavigationLink {
                            CityDetail(city: city)
                        } label: {
                            BolgeItem(city: city)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
        
    }
}

#Preview {
    
    let cities = ModelData().cities
    return BolgeRow(
        bolgeName: cities[12].bölge.rawValue,
        items: Array(cities.prefix(3))
    )
}
