//
//  CircleView.swift
//  TrafficLight2
//
//  Created by Alexey Manokhin on 20.04.2023.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(lineWidth: 1.5).foregroundColor(color))
            .shadow(color: color, radius: 30)
            .padding(.bottom, 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .green, opacity: 1.0)
    }
}
