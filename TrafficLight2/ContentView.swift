//
//  ContentView.swift
//  TrafficLight2
//
//  Created by Alexey Manokhin on 19.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonLabel = "START"
    @State private var redLightAlpha = 0.3
    @State private var yellowLightAlpha = 0.3
    @State private var greenLightAlpha = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack {
                    CircleView(color: .red, opacity: redLightAlpha)
                    CircleView(color: .yellow, opacity: yellowLightAlpha)
                    CircleView(color: .green, opacity: greenLightAlpha)
                }
                .frame(width: 110, height: 400)
                Spacer()
                
                Button(action: switchLight) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(lineWidth: 4)
                                .foregroundColor(.white))
                        Text(buttonLabel)
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    .frame(width: 200, height: 60)
                }
            }
            .padding()
        }
    }
    
    private func switchLight() {
        if redLightAlpha == 1.0 {
            yellowLightAlpha = 1
            greenLightAlpha = 0.3
            redLightAlpha = 0.3
        } else if yellowLightAlpha == 1.0 {
            redLightAlpha = 0.3
            greenLightAlpha = 1.0
            yellowLightAlpha = 0.3
        } else if greenLightAlpha == 1.0 {
            redLightAlpha = 1
            yellowLightAlpha = 0.3
            greenLightAlpha = 0.3
        } else {
            redLightAlpha = 1.0
            yellowLightAlpha = 0.3
            greenLightAlpha = 0.3
            buttonLabel = "NEXT"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
