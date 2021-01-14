//
//  Counts.swift
//  CashCounter
//
//  Created by William Prescott on 2021-01-08.
//

import Foundation

class Unit {
    var name : String = ""
    var numberOfUnits : Int = 0
    var valueOfUnit : Double = 0.0
    var imageName : String
    
    init(name: String, numberOfUnits: Int, valueOfUnit: Double, imageName: String) {
        self.name = name
        self.numberOfUnits = numberOfUnits
        self.valueOfUnit = valueOfUnit
        self.imageName = imageName
    }
    /*
    func value() -> Int {
        return multiplier * count
    }
     */
}
