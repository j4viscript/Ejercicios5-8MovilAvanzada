//
//  Ejercicio8.swift
//  Ejercicios5-8
//
//  Created by Javier Oskar Murillo Cota on 15/05/23.
//

import SwiftUI

struct Ejercicio8: View {
    @State private var score = ""
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""

    func evaluate() {
        guard let scoreInt = Int(score) else {
            alertTitle = "Error"
            alertMessage = "Por favor, introduce un número válido."
            showAlert = true
            return
        }

        switch scoreInt {
            case 0...59:
                alertTitle = "Insuficiente"
            case 60...69:
                alertTitle = "Suficiente"
            case 70...79:
                alertTitle = "Regular"
            case 80...89:
                alertTitle = "Muy bien"
            case 90...100:
                alertTitle = "Excelente"
            default:
                alertTitle = "Error"
                alertMessage = "Calificación desconocida"
                showAlert = true
                return
        }

        alertMessage = scoreInt < 60 ? "No aprobado" : "Aprobado"
        showAlert = true
    }

    var body: some View {
        VStack {
            TextField("Introduce tu calificación", text: $score)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 0.5)
            Button(action: evaluate) {
                Text("Evaluar calificación")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .alert(isPresented: $showAlert) {
                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
        .padding()
        .navigationTitle("Ejercicio 8")
    }
}

struct Ejercicio8_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio8()
    }
}
//.navigationTitle("Ejercicio 8")
