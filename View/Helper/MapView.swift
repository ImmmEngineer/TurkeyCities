//
//  MapView.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 9.02.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate : CLLocationCoordinate2D
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    private var region : MKCoordinateRegion{
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 37, longitude: 37.12443))
}
