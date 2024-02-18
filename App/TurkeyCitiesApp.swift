//
//  TurkeyCitiesApp.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 6.02.2024.
//

import SwiftUI

@main
struct TurkeyCitiesApp: App {
    @State var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(ModelData())
        }
    }
}
