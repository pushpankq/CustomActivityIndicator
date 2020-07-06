//
//  CustomActivityIndicator.swift
//  CustomActivityIndicatorSwiftUI
//
//  Created by Pushpank Kumar on 06/07/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI

struct CustomActivityIndicator: View {
    @State private var isAnimating = false
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<6) { index in
                Group {
                    Circle()
                        .frame(width: geometry.size.width / 6, height: geometry.size.height / 6)
                        .scaleEffect(!self.isAnimating ? 1 - CGFloat(index) / 6 : 0.2 + CGFloat(index) / 6)
                        .offset(y: geometry.size.width / 12 - geometry.size.height / 2)
                }.frame(width: geometry.size.width, height: geometry.size.height)
                    .rotationEffect(!self.isAnimating ? .degrees(0) : .degrees(360))
                    .animation(Animation
                        .timingCurve(0.5, 0.15 + Double(index) / 5, 0.25, 1, duration: 1.5)
                        .repeatForever(autoreverses: false))
            }
        }.aspectRatio(1, contentMode: .fit)
            .onAppear {
                self.isAnimating = true
        }
        
    }
}

struct CustomActivityIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CustomActivityIndicator()
    }
}
