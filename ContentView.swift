//
//  ContentView.swift
//  Ejercicios5-8
//
//  Created by Javier Oskar Murillo Cota on 15/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            NavigationView {
                List {
                    NavigationLink(destination: Ejercicio5()) {
                        Text("Ir al Ejercicio 5")
                    }
                    NavigationLink(destination: Ejercicio6()) {
                        Text("Ir al Ejercicio 6")
                    }
                    NavigationLink(destination: Ejercicio7()) {
                        Text("Ir al Ejercicio 7")
                    }
                    NavigationLink(destination: Ejercicio8()) {
                        Text("Ir al Ejercicio 8")
                    }

                }
                .navigationTitle("Ejercicios")
            }
            .tabItem {
                 Label("Ejercicios", systemImage: "list.dash")
             }
             AboutMe()
                 .tabItem {
                     Label("About Me", systemImage: "person.circle")
                 }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
