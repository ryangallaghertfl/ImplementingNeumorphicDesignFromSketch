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
                .titleStyle()
            
            Text("BoldBody")
                .boldBodyStyle()
            
            Text("Body")
                .bodyStyle()

            Text("Caption")
                .captionStyle()
            
            Text("System font")
                .font(.largeTitle)
        }
    }
}





#Preview {
    TextStyles()
}

//MARK: CustomFonts enum to return desired font

enum CustomFonts {
    case avenirNextDemiBold
    case avenirNextMedium
    
    var fontName: String {
        switch self {
        case .avenirNextDemiBold:
            return "AvenirNext-DemiBold"
        case .avenirNextMedium:
            return "AvenirNext-Medium"
        }
    }
}

//MARK: Extensions to View allows the viewmodifiers to be called directly on the views

extension View {
    public func titleStyle() -> some View {
        modifier(TitleStyle())
    }
    
    public func bodyStyle() -> some View {
        modifier(BodyStyle())
    }
    
    public func boldBodyStyle() -> some View {
        modifier(BoldBodyStyle())
    }
    
    public func captionStyle() -> some View {
        modifier(CaptionStyle())
    }
}

//MARK: ViewModifiers for base neumorphic fonts from the Sketch design

struct TitleStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content.font(.custom(CustomFonts.avenirNextDemiBold.fontName, size: 48, relativeTo: .title))
    }
}

struct BodyStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content.font(.custom(CustomFonts.avenirNextMedium.fontName, size: 20, relativeTo: .body))
    }
}

struct BoldBodyStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content.font(.custom(CustomFonts.avenirNextDemiBold.fontName, size: 20, relativeTo: .body))
    }
}

struct CaptionStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content.font(.custom(CustomFonts.avenirNextMedium.fontName, size: 14, relativeTo: .caption))
    }
}
