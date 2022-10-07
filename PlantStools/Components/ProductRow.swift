//
//  ProductRow.swift
//  PlantStools
//
//  Created by Sergio Herrera on 10/6/22.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
                
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[5])
            .environmentObject(CartManager())
    }
}
