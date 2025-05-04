//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ashish Badak on 03/05/25.
//

import SwiftUI

struct LandmarkDetail: View {
    let landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinates: landmark.coordinates)
                    .frame(height: 300)
                CircleImage(imageName: landmark.imageName)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("About \(landmark.name)")
                            .font(.title2)
                        Text(landmark.description)
                    }
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
