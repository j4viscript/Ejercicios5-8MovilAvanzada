//
//  Ejercicio6.swift
//  Ejercicios5-8
//
//  Created by Javier Oskar Murillo Cota on 15/05/23.
//

import SwiftUI

struct Ejercicio6: View {
    @State private var age = ""
    @State private var lifeStage = ""

    func calculateLifeStage() {
        guard let ageInt = Int(age) else {
            lifeStage = "Por favor, introduce un número válido."
            return
        }

        switch ageInt {
            case 0...5:
                lifeStage = "Infancia"
            case 6...11:
                lifeStage = "Niñez"
            case 12...19:
                lifeStage = "Adolescencia"
            case 20...30:
                lifeStage = "Juventud"
            case 31...59:
                lifeStage = "Adultez"
            case 60...120:
                lifeStage = "Ancianidad"
            default:
                lifeStage = "Edad desconocida"
        }
    }

    var body: some View {
        VStack {
            TextField("Introduce tu edad", text: $age)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 0.5)
            Button(action: calculateLifeStage) {
                Text("Calcular etapa de vida")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            Text(lifeStage)
                .padding()
        }
        .padding()
        .navigationTitle("Ejercicio 6")
    }
}


struct Ejercicio6_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio6()
    }
}
