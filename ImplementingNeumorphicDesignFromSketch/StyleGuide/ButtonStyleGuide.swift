//
//  ButtonStyleGuide.swift
//  ImplementingNeumorphicDesignFromSketch
//
//  Created by Ryan Gallagher on 06/01/2024.
//

import SwiftUI

struct ButtonStyleGuide: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Button Styles").font(.largeTitle)
            
            Button {
                
            } label: {
                Text("Small primary button style")
            }.buttonStyle(SmallPrimaryButtonStyle())
            
            Button {
                
            } label: {
                Text("Small prim b'n style - disabled")
            }.buttonStyle(SmallPrimaryButtonStyle())
                .disabled(true)
        }
    }
}

#Preview {
    ButtonStyleGuide()
}

struct SmallPrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    var lightShadowColour: Color {
        isEnabled ? Color("shadowColourYellow") : Color("shadowColourLight")
    }
    
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .captionStyle()
            .foregroundColor(.white)
            .padding(12.5)
            .background(Capsule().fill(Color("AccentColor")))
            .shadow(color: Color("shadowColourGrey"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
            .shadow(color: lightShadowColour, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -5, y: -5)
    }
}
