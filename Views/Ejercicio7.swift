//
//  Ejercicio7.swift
//  Ejercicios5-8
//
//  Created by Javier Oskar Murillo Cota on 15/05/23.
//

import SwiftUI

struct Ejercicio7: View {
    @State private var age = ""
    @State private var lifeStage = ""

    let lifeStages = [
        (range: 0...5, stage: "Infancia"),
        (range: 6...11, stage: "Niñez"),
        (range: 12...19, stage: "Adolescencia"),
        (range: 20...30, stage: "Juventud"),
        (range: 31...59, stage: "Adultez"),
        (range: 60...120, stage: "Ancianidad")
    ]

    func calculateLifeStage() {
        guard let ageInt = Int(age) else {
            lifeStage = "Por favor, introduce un número válido."
            return
        }

        for lifeStageRange in lifeStages {
            if lifeStageRange.range.contains(ageInt) {
                lifeStage = lifeStageRange.stage
                return
            }
        }

        lifeStage = "Edad desconocida"
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
        .navigationTitle("Ejercicio 7")
    }
}


struct Ejercicio7_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio7()
    }
}
//.navigationTitle("Ejercicio 7") 
