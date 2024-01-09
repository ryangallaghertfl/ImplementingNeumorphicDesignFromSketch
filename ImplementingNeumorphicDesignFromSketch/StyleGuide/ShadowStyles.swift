//
//  ShadowStyles.swift
//  ImplementingNeumorphicDesignFromSketch
//
//  Created by Ryan Gallagher on 09/01/2024.
//

import SwiftUI

struct ShadowStyles: View {
    var body: some View {
        VStack {
            Color("AccentColor")
                .frame(width: 100, height: 100)
                .cornerRadius(20)
                .padding(30)
            Text("Shadows")
            
            Color("AccentColor")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .cornerRadius(20)
                .padding(30)
                .modifier(NeumorphicShadow(isLight: false))
            
            Color("AccentColor")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .cornerRadius(20)
                .modifier(NeumorphicShadow(isLight: true))
        }
    }
}

struct NeumorphicShadow: ViewModifier {
    
    var isLight: Bool
    
    var lightShadowColour: Color {
        isLight ? Color("shadowColourYellow") : Color("shadowColourLight")
    }
    
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("shadowColourGrey"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
            .shadow(color: lightShadowColour, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -5, y: -5)
    }
}

#Preview {
    ShadowStyles()
}
