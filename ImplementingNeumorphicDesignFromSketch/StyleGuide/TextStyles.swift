//
//  TextStyles.swift
//  ImplementingNeumorphicDesignFromSketch
//
//  Created by Ryan Gallagher on 05/01/2024.
//

import SwiftUI

struct TextStyles: View {
    var body: some View {
        VStack {
            Text("Title")
                .font(.custom("AvenirNext-DemiBold", size: 48, relativeTo: .title))
            
            Text("BoldBody")
                .font(.custom("AvenirNext-DemiBold", size: 20, relativeTo: .body))
            
            Text("Body")
                .font(.custom("AvenirNext-Medium", size: 20, relativeTo: .body))

            Text("Caption")
                .font(.custom("AvenirNext-Medium", size: 14, relativeTo: .caption))
        }
    }
}

#Preview {
    TextStyles()
}
