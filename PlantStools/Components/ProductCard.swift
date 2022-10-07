//
//  ProductCard.swift
//  PlantStools
//
//  Created by Sergio Herrera on 10/6/22.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20, corners: [.topLeft, .topRight, .bottomLeft])
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("$\(product.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, height: 60, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20, corners: [.bottomLeft, .topRight])
                .lineLimit(1)
                .allowsTightening(true)
                
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .font(.system(size: 18))
                    .background(.black)
                    .foregroundColor(.white)
                    .font(.system(size: 33))
                    .cornerRadius(50)
                    .padding(15)
                
            }


        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
