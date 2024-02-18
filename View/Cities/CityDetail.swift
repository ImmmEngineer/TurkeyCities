//
//  CityDetail.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 12.02.2024.
//

import SwiftUI

struct CityDetail: View {
    
    @Environment(ModelData.self) var modelData
    
    var city : City
    
    var cityIndex: Int {
        modelData.cities.firstIndex(where: { $0.id == city.id })!
        }
    var body: some View {
        
        @Bindable var modelData = modelData
        
        ScrollView{
            MapView(coordinate: city.locationCoordinate)
                .frame(height: UIScreen.main.bounds.height * 0.3)
            GorselView(image: city.image)
                .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.5, alignment: .center)
                .offset( y: -100)
                .padding(.bottom,-130)
            VStack(alignment: .leading){
               
                
                HStack{
                    Text(city.il_adi)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.cities[cityIndex].isFavorite)
                    Spacer()
                    Text("Plakası : \(city.plaka)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                Divider()
                Text(city.il_adi + " Hakkında")
                Divider()
                Text(city.hakkinda)
            }
            .padding()
        }
        .navigationTitle(city.il_adi)
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

#Preview {
    let modelData = ModelData()
    return CityDetail(city: modelData.cities[17])
            .environment(modelData)
}
