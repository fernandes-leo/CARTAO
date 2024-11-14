//
//  FrontOfCard.swift
//  CARTAO
//
//  Created by Leonardo Fernandes on 12/11/24.
//

import SwiftUI

struct FrontOfCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Total")
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
            
            Text("R$ 10.000")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("**** **** **** 5678")
                .font(.subheadline)
                .foregroundColor(.white)
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading) {
                    
                    Text("NOME")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.6))
                    
                    Text("JOSÉ DA SILVA")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("DATA")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.6))
                    Text("08/28")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    FrontOfCard()
}
