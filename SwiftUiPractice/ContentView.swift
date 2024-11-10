//
//  ContentView.swift
//  SwiftUiPractice
//
//  Created by Mukthar Amiyan on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var volume: CGFloat = 30
    var body: some View {
        NavigationStack {
            VStack {
                CustomSlider(value: $volume, in: 10...100) {
                    HStack {
                        Image(
                            systemName: "speaker.wave.3.fill",
                            variableValue: volume / 100
                        )
                        
                        Spacer(minLength: 0)
                        
                        Text(String(format: "%.1f", volume) + "%")
                            .font(.callout)
                    }
                    .padding(.horizontal,20)
                }
                
                Slider(value: $volume, in: 10...100)
            }
            .padding(15)
            .navigationTitle("Expandable Slider")
        }
    }
}

#Preview {
    ContentView()
}
