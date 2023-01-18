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
        let tamagotchi = tamagotchiClass()
        let tamagotchiAttributes = tamagotchiClass.displayStats(<#T##self: tamagotchiClass##tamagotchiClass#>)
        
        let expectedName = 
        
        
        
        
        
        //assert
        XCTAssertEqual(tamagotchi.name, "Kurotsuchi")
        XCTAssertEqual(tamagotchi.health, 100)
        XCTAssertEqual(tamagotchi.hunger, 20)
        XCTAssertEqual(tamagotchi.happiness, 75)
        XCTAssertEqual(tamagotchi.age, 0)
        XCTAssertEqual(tamagotchi.weight, 5)
    }

}
