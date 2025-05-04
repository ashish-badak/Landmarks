//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ashish Badak on 03/05/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
