//
//  Stats.swift
//  TamagotchiApp
//
//  Created by Korniienko, Ivan (PGW) on 23/02/2023.
//

import Foundation


struct Stats {
    
    let name: String
    var age: Int
    var weight: Int
    var health: Int
    var hunger: Int
    var happiness: Int
    
    func displayStats() -> String {
        
        return"""
            name: \(name)
            age: \(age)
            weight: \(weight)
            health: \(health)
            hunger: \(hunger)
            happiness: \(happiness)
        """
        
    }
    
}
