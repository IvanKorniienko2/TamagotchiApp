//
//  Tamagotchi_construct.swift
//  TamagotchiApp
//
//  Created by Korniienko, Ivan (PGW) on 14/01/2023.
//

import Foundation

class tamagotchiClass {
    private let name: String
    private var health: Int
    private var hunger: Int
    private var happiness: Int
    private var age: Int
    private var weight: Int
    
    init() {
        self.name = "Kurotsuchi"
        self.health = 100
        self.hunger = 20
        self.happiness = 75
        self.age = 0
        self.weight = 5
    }
    
    func displayStats() -> (name: String, health: Int, hunger: Int, happiness: Int, age: Int, weight: Int) {
        let stats = (name: self.name, self.health: Int, self.hunger: Int, self.happiness: Int, self.age: Int, self.weight: Int)
        return stats
    }
    
}

