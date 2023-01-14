//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Korniienko, Ivan (DWBA) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    let tamagotchi = TamagotchiClass(self.name: "Kurotsuchi", self.health: 100, self.hunger: 20, self.happiness: 75, self.age: 0, self.weight: 5)
    }
    var body: som View {
        Text("Tamagotchi: \(tamagotchi.name)")
            .padding()
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
