//
//  BolgeHome.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 14.02.2024.
//

import SwiftUI

struct BolgeHome: View {
    
    @Environment(ModelData.self) var modelData
    var body: some View {
        NavigationSplitView {
            List{
                modelData.features[4].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self){ key in
                    BolgeRow(bolgeName: key, items: modelData.categories[key]!)
                    
                }.listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Şehir Seçiniz!")
        }

    }
}

#Preview {
    BolgeHome()
        .environment(ModelData())
}
