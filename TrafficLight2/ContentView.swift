//
//  ContentView.swift
//  TrafficLight2
//
//  Created by Alexey Manokhin on 19.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonLabel = "START"
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack {
                    CircleView(color: .red, opacity: redLightOpacity)
                    CircleView(color: .yellow, opacity: yellowLightOpacity)
                    CircleView(color: .green, opacity: greenLightOpacity)
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
        if redLightOpacity == 1.0 {
            yellowLightOpacity = 1.0
            redLightOpacity = 0.3
        } else if yellowLightOpacity == 1.0 {
            greenLightOpacity = 1.0
            yellowLightOpacity = 0.3
        } else if greenLightOpacity == 1.0 {
            redLightOpacity = 1.0
            greenLightOpacity = 0.3
        } else {
            redLightOpacity = 1.0
            buttonLabel = "NEXT"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
