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
                MapView()
                    .frame(height: 300)
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    HStack {
                        Text("Joshua Tree National Park")
                        Spacer()
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("About Turtle Rock")
                            .font(.title2)
                        Text("Turtle Rock is a prominent rock formation in Joshua Tree National Park, California, known for its striking northwest face and the nearby picnic area. Popular with climbers and tourists, the area offers beginner-friendly climbing routes on its east face and hosts various events like stargazing and religious ceremonies.")
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
