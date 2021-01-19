//
//  Counts.swift
//  CashCounter
//
//  Created by William Prescott on 2021-01-08.
//

import Foundation

struct Unit {
    var name = ""
    var numberOfUnits = 0
    var valueOfUnit = 0.0
    var imageName = ""
    var pickerVisible = false
    
    init(name: String, numberOfUnits: Int, valueOfUnit: Double, imageName: String) {
        self.name = name
        self.numberOfUnits = numberOfUnits
        self.valueOfUnit = valueOfUnit
        self.imageName = imageName
        self.pickerVisible = false
        
    }
    
    func product() -> Double { self.valueOfUnit * Double(self.numberOfUnits) }

}

