//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Korniienko, Ivan (DWBA) on 14/01/2023.
//

import SwiftUI

struct ContentView:View {
    @State private var basicStats = BasicStats()
    @State private var timer: Timer?

    var body: some View {
        VStack {
            Text("\(basicStats.stats[0].displayStats())")
            Button("Feed", action: {
                if basicStats.stats[0].hunger == 0 {
                    print("I cannot eat any more")
                } else {
                    feedTamagotchi()
                }
            })
                .disabled(basicStats.stats[0].hunger == 0)
            Toggle("Play", isOn: $basicStats.stats[0].isPlaying)
                .disabled(basicStats.stats[0].happiness == 0)
                .frame(width: 100, height: 50, alignment: .leading)
                .onChange(of: basicStats.stats[0].isPlaying) { _ in
                    startStopTimer()
                            }
        }
    }
    
    func feedTamagotchi() {
        if basicStats.stats[0].hunger - 10 >= 0 {
            basicStats.stats[0].hunger -= 10
        }
        if basicStats.stats[0].health + 5 <= 100 {
            basicStats.stats[0].health += 5
        }
        if basicStats.stats[0].happiness + 3 >= 0 {
            basicStats.stats[0].happiness += 3
        }
        if basicStats.stats[0].weight + 1 <= 50 {
            basicStats.stats[0].weight += 1
        }
    }
    func playTamagotchi() {
        if basicStats.stats[0].happiness <= 100 {
            basicStats.stats[0].happiness += 1
        }
        else {
            print("Tamagotchi is very happy, and a bit tired so he cannot play any more")
        }
    }
    func startStopTimer() {
        if basicStats.stats[0].isPlaying {
            timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
                playTamagotchi()
            }
        } else {
            // Stop the timer
            timer?.invalidate()
            timer = nil
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
