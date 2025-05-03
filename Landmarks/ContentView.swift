//
//  ContentView.swift
//  Landmarks
//
//  Created by Ashish Badak on 03/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Turtle Rock")
                    .font(.title)
                Text("Joshua Tree National Park")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
