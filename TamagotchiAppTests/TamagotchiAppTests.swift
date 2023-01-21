//
//  TamagotchiAppTests.swift
//  TamagotchiAppTests
//
//  Created by Korniienko, Ivan (PGW) on 14/01/2023.
//

import XCTest
@testable import TamagotchiApp

class TamagotchiAppTests: XCTestCase {

    func TestNewTamagotchiAppGivesMeATamWithAllAttributesSet() {
        //arrange
        //act
        let tamagotchi = Tamagotchi()
        let tamagotchiAttributes = Tamagotchi.displayStats(name: "Kurotsuchi", health: 100, hunger: 20, happiness: 75, age: 0, weight: 5)
        
        let expectedName = "Kurotsuchi"
        let expectedHealth = 100
        let expectedHunger = 20
        let expectedHappiness = 75
        let expectedAge = 0
        let expectedWeight = 5
        
        //assert
        XCTAssertEqual(expectedName, name)
        XCTAssertEqual(expectedHealth, health)
        XCTAssertEqual(expectedHunger, hunger)
        XCTAssertEqual(expectedHappiness, happiness)
        XCTAssertEqual(expectedAge, age)
        XCTAssertEqual(expectedWeight, weight)
    }

}
