//
//  ContentView.swift
//  TrafficLight2
//
//  Created by Alexey Manokhin on 19.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonLabel = "START"
    @State private var redLightAlpha = 1.0
    @State private var yellowLightAlpha = 0.3
    @State private var greenLightAlpha = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack {
                    CircleView(color: .red, alpha: redLightAlpha)
                    CircleView(color: .yellow, alpha: yellowLightAlpha)
                    CircleView(color: .green, alpha: greenLightAlpha)
                }
                .frame(width: 100, height: 300)
                Spacer()
                
                Button(action: switchLight) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 3)
                                .foregroundColor(.white))
                        Text(buttonLabel)
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    .frame(width: 150, height: 40)
                }
            }
            .padding()
        }
    }
    
    private func switchLight() {
        
        if redLightAlpha == 1.0 {
            yellowLightAlpha = 0.3
            greenLightAlpha = 0.3
        } else if yellowLightAlpha == 1.0 {
            redLightAlpha = 0.3
            greenLightAlpha = 0.3
        } else {
            redLightAlpha = 0.3
            yellowLightAlpha = 0.3
        }
        
    }
    private func toggleStatus() {
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
