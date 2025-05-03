//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ashish Badak on 03/05/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(.circle)
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(color: .secondary, radius: 7)
    }
}

#Preview {
    CircleImage()
}
