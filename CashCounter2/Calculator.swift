//
//  Calculator.swift
//  CashCounter
//
//  Created by William Prescott on 2021-01-09.
//

import Foundation

struct Calculator  {
    
    var units: [Unit] =
    
    [
        Unit(name:"500", numberOfUnits: 0, valueOfUnit: 500.0, imageName: "Bill_500"),
        Unit(name:"200", numberOfUnits: 0, valueOfUnit: 200.0, imageName: "Bill_200"),
        
        Unit(name:"100", numberOfUnits: 0, valueOfUnit: 100.0, imageName: "Bill_100"),
        Unit(name:" 50", numberOfUnits: 0, valueOfUnit: 50.0, imageName: "Bill_50"),
        
        Unit(name:" 20", numberOfUnits: 0, valueOfUnit: 20.0, imageName: "Bill_20"),
        Unit(name:" 10", numberOfUnits: 0, valueOfUnit: 10.0, imageName: "Coin_10"),
        
        Unit(name:"  5", numberOfUnits: 0, valueOfUnit: 5.0, imageName: "Coin_5"),
        Unit(name:"  2", numberOfUnits: 0, valueOfUnit: 2.0, imageName: "Coin_2"),
        
        Unit(name:"  1", numberOfUnits: 0, valueOfUnit: 1.0, imageName: "Coin_1"),
        Unit(name:"0.5", numberOfUnits: 0, valueOfUnit: 0.5, imageName: "Coin_0.5")
    ]

    func sum() -> Double {
        var total = 0.0
        for unit in units {
            total += unit.product()
        }
        return total
    }
}
