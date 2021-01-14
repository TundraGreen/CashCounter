//
//  ContentView.swift
//  CashCounter2
//
//  Created by William Prescott on 2021-01-13.
//

import SwiftUI

struct ContentView: View {
    var calculator = Calculator()

    @State var countInputs = Array(repeating: 0, count: 10)

    var body: some View {
        Text("Cash Counter").bold()
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .font(.title)
        VStack {
            Group {
                RowView(
                    imageName: calculator.units[0].imageName,
                    denomination: calculator.units[0].name,
                    currentCount: calculator.units[0].numberOfUnits,
                    newCount: $countInputs[0])
                RowView(
                    imageName: calculator.units[1].imageName,
                    denomination: calculator.units[1].name,
                    currentCount: calculator.units[1].numberOfUnits,
                    newCount: $countInputs[1])
            }
            VStack {
                VStack  {
                    Divider()
                }
                HStack {
                    Text("Total")
                        .font(.system(size: 20))
                        .bold()
                        .frame(alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 100, bottom: -5, trailing: 5))
                    Spacer()
                    Text(sum)
                        .font(.system(size: 20))
                        .bold()
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: -5, trailing: 100))
                }
            }
        }
    }
    
    var sum : String {
        String(format: "$%0.1f",
            {
                var temp = 0.0
                for i in 0...9 {
                    temp += calculator.units[i].valueOfUnit * calculator.units[i].numberOfUnits
                 }
                return temp
            }
        }

    
/*
    func calculateSum(index: Int, countString: String)   {
        let count = Int((countString as NSString).intValue)
        calculator.units[index].numberOfUnits = count
        var tempSum = 0.0
        for i in 0...9 {
            let tempMultiplier = calculator.units[i].valueOfUnit
            let tempCount = calculator.units[i].numberOfUnits
            tempSum += Double(tempCount) * tempMultiplier
        }
        self.sum = tempSum
    }
 */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
