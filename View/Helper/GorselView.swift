//
//  GorselView.swift
//  TurkeyCities
//
//  Created by Muhammet Emin Ayhan on 9.02.2024.
//

import SwiftUI

struct GorselView: View {
    
    var image : Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{ Circle().stroke(Color.white, lineWidth: 5)}
            .shadow(radius: 10)
    }
}

#Preview {
    GorselView(image: Image("Artvin"))
}
