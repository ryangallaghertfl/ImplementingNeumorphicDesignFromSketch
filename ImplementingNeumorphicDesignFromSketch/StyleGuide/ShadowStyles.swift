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
            Text("Shadows")
            
            Color("AccentColor")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .cornerRadius(20)
        }
    }
}

#Preview {
    ShadowStyles()
}
