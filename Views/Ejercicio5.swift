//
//  Ejercicio5.swift
//  Ejercicios5-8
//
//  Created by Javier Oskar Murillo Cota on 15/05/23.
//

import SwiftUI

struct Ejercicio5: View {
    var body: some View {
        VStack {
            List(products) { product in
                Text("\(product.name): $\(String(format: "%.2f", product.totalPrice))")
            }
            Text("Total a pagar: $\(String(format: "%.2f", totalCost))")
                .padding()
            Text("Costo de productos: $\(String(format: "%.2f", costProducts))")
                .padding()
            Text("Gastos de operación: $\(String(format: "%.2f", operationCosts))")
                .padding()
            Text("Ganancia del vendedor: $\(String(format: "%.2f", profit))")
                .padding()
        }
        .navigationTitle("Ejercicio 5")
    }
    let products: [Product] = [
        Product(name: "Pepino", price: 20, quantity: 3),
        Product(name: "Aguacate", price: 65, quantity: 2),
        Product(name: "Tomate", price: 4, quantity: 7),
        Product(name: "Nopales", price: 15/5, quantity: 15), // El precio por nopal es 15/5
        Product(name: "Manzana", price: 20, quantity: 4)
    ]

    var totalCost: Double {
        return products.reduce(0) { $0 + $1.totalPrice }
    }

    var costProducts: Double {
        return totalCost * 0.3
    }

    var operationCosts: Double {
        return totalCost * 0.2
    }

    var profit: Double {
        return totalCost * 0.5
    }
}

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let quantity: Int

    var totalPrice: Double {
        return price * Double(quantity)
    }
}

struct Ejercicio5_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio5()
    }
}
