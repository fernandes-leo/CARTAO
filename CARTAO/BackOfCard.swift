//
//  BackOfCard.swift
//  CARTAO
//
//  Created by Leonardo Fernandes on 12/11/24.
//

import SwiftUI

struct BackOfCard: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(height: 40)
                .padding(.top, 10)
            
            Spacer()
            
            HStack {
                Text("CVV")
                    .font(.caption)
                    .foregroundColor(.white)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.white)
                    .frame(width: 100, height: 30)
                    .overlay(
                        Text("123")
                            .font(.headline)
                            .foregroundColor(.black)
                    )
            }
            .padding(.horizontal, 16)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                .font(.caption2)
                .foregroundColor(.white.opacity(0.7))
                .padding(.horizontal, 16)
                .padding(.bottom, 10)
        }
        .padding(16)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    BackOfCard()
}
