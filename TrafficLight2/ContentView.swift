//
//  ContentView.swift
//  TrafficLight2
//
//  Created by Alexey Manokhin on 19.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    var redLightStatus = 0
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack {
                    Circle()
                        .foregroundColor(.red)
                        .overlay(Circle().stroke(lineWidth: 2).colorInvert())
                        .shadow(color: .red, radius: 20)
                        .padding(.bottom, 10)
                    Circle()
                        .foregroundColor(.yellow)
                        .overlay(Circle().stroke(lineWidth: 2).colorInvert())
                        .shadow(color: .yellow, radius: 20)
                        .padding(.bottom, 10)
                    Circle()
                        .foregroundColor(.green)
                        .overlay(Circle().stroke(lineWidth: 2).colorInvert())
                        .shadow(color: .green, radius: 20)
                        .padding(.bottom, 10)
                }
                .frame(width: 300, height: 300)
                Spacer()
                
                Button(action: switchLight) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 3)
                                .foregroundColor(.white))
                        Text("NEXT")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    .frame(width: 150, height: 40)
                }
            }
            .padding()
        }
        }
    }

private func switchLight() {
   
}

private func switchLight() {
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
