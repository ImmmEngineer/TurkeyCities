//
//  BolgeItem.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 14.02.2024.
//

import SwiftUI

struct BolgeItem: View {
    
    var city : City
    var body: some View {
        VStack(alignment: .leading){
            city.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(city.il_adi)
                .foregroundStyle(.primary)
                .font(.caption)
            
        }.padding(.leading, 15)
        
    }
}

#Preview {
    BolgeItem(city: ModelData().cities[12])
}
