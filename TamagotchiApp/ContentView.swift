//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Korniienko, Ivan (DWBA) on 14/01/2023.
//

import SwiftUI

struct ContentView:View {
    @State private var basicStats = BasicStats()

    var body: some View {
        VStack {
            Text("\(basicStats.stats[0].displayStats())")
            Button("Feed", action: {feedTamagotchi()})
        }
    }
    
    func feedTamagotchi() {
        if basicStats.stats[0].hunger - 20 >= 0 {
            basicStats.stats[0].hunger -= 20
        }
        if basicStats.stats[0].health + 10 <= 100 {
            basicStats.stats[0].health += 10
        }
        if basicStats.stats[0].happiness + 10 >= 0 {
            basicStats.stats[0].happiness += 10
        }
        if basicStats.stats[0].weight + 2 <= 50 {
            basicStats.stats[0].weight += 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
