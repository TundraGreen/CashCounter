//
//  ContentView.swift
//  CashCounter2
//
//  Created by William Prescott on 2021-01-13.
//

import SwiftUI

struct ContentView: View {
    @State var calculator = Calculator()
    @State var countInputs = Array(repeating: "", count: 10)
    var total = 0.0
    
    var body: some View {
        
        Text("Cash Counter").bold()
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .font(.title)
        VStack {
            
            Group {
                RowView(
                    numberOfUnits: $countInputs[0],
                    name: calculator.units[0].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[1],
                    name: calculator.units[1].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[2],
                    name: calculator.units[2].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[3],
                    name: calculator.units[3].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[4],
                    name: calculator.units[4].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[5],
                    name: calculator.units[5].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[6],
                    name: calculator.units[6].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[7],
                    name: calculator.units[7].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[8],
                    name: calculator.units[8].name//,
//                    imageName:calculator.units[0].imageName
                )
                RowView(
                    numberOfUnits: $countInputs[9],
                    name: calculator.units[9].name//,
//                    imageName:calculator.units[0].imageName
                )

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
                    Text(String(format: "%.0f",total))
                        .font(.system(size: 20))
                        .bold()
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: -5, trailing: 100))
                }
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
