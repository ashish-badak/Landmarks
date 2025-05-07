//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ashish Badak on 03/05/25.
//

import SwiftUI

struct LandmarkList: View {
    @State
    private var shouldShowFavoritesOnly: Bool = false
    private var filteredLandmarks: [Landmark] {
        if shouldShowFavoritesOnly {
            landmarks.filter { $0.isFavorite }
        } else {
            landmarks
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filteredLandmarks) { landmark in
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
