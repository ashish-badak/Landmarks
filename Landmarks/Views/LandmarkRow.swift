//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ashish Badak on 03/05/25.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    LandmarkRow(landmark: landmarks[0])
}
