//
//  ContentView.swift
//  CARTAO
//
//  Created by Leonardo Fernandes on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var rotationAngle: Double = 0
    @State private var isFlipped = false
    
    var body: some View {
        VStack(spacing: 40) {
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient (
                        gradient: Gradient(colors: [Color.gray.opacity(0.2), Color.black]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
                    .frame(width: 350, height: 200)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
                
                ZStack {
                    FrontOfCard()
                        .opacity(isFlipped ? 0 : 1)
                    
                    BackOfCard()
                        .opacity(isFlipped ? 1 : 0)
                        .rotation3DEffect(
                            .degrees(180),
                            axis: (x: 0, y: 1, z: 0)
                        )
                }
                .frame(width: 350, height: 200)
            }
            .rotation3DEffect(
                .degrees(rotationAngle),
                axis: (x: 0, y: 1, z: 0)
            )
            
            Button(action: {
                withAnimation(.easeInOut(duration: 1.0)) {
                    isFlipped.toggle()
                    rotationAngle += 180
                }
            }) {
                Text("Girar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200)
                    .background(Color.green)
                    .cornerRadius(15)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
