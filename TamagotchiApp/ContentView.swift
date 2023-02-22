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
        VStack(alignment: .leading) {
            Text("\(tamagotchi.displayStats().0 ?? ".")")
            Button("Feed Tamagotchi", action: {
                tamagotchi.feedTamagotchi()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
