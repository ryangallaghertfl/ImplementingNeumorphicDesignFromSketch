//
//  ButtonStyleGuide.swift
//  ImplementingNeumorphicDesignFromSketch
//
//  Created by Ryan Gallagher on 06/01/2024.
//

import SwiftUI

struct ButtonStyleGuide: View {
    var body: some View {
        VStack {
            Text("Button Styles").font(.largeTitle)
            
        }
    }
}

#Preview {
    ButtonStyleGuide()
}

struct SmallPrimaryButtonStyle: ButtonStyle {
    //configuration object has three properties
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .captionStyle()
            .foregroundColor(.white)
            .padding(12.5)
            .background(Capsule().fill(Color("AccentColor")))
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
    }
}
