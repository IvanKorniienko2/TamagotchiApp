//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Korniienko, Ivan (DWBA) on 14/01/2023.
//

import SwiftUI

struct ContentView:View {
    let tamagotchi = Tamagotchi()

    var body: some View {
        Text("Tamagotchi: \(tamagotchi.name)")
            .padding()
        VStack(alignment: .leading) {
            Button("Feed Tamagotchi") {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
