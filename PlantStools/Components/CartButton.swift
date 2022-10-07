//
//  CartButton.swift
//  PlantStools
//
//  Created by Sergio Herrera on 10/6/22.
//

import SwiftUI

struct CartButton: View {
    
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart.fill")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.footnote).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.blue)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
