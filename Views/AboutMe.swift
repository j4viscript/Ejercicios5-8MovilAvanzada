//
//  AboutMe.swift
//  Ejercicios5-8
//
//  Created by Javier Oskar Murillo Cota on 15/05/23.
//

import SwiftUI

struct AboutMe: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text("Javier Murillo")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Programación Movil Avanzada")
                .font(.title)
                .foregroundColor(.secondary)
            Divider()
            VStack(alignment: .leading) {
                InformationRowView(label: "Escuela", value: "UABCS")
                InformationRowView(label: "Semestre", value: "8vo")
            }
            .padding()
            Spacer()
        }
        .padding()
    }
}

struct InformationRowView: View {
    let label: String
    let value: String

    var body: some View {
        HStack {
            Text(label)
                .font(.headline)
                .foregroundColor(.secondary)
            Spacer()
            Text(value)
                .font(.headline)
        }
    }
}


struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
        AboutMe()
    }
}
