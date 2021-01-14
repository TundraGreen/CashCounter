//
//  PickerVIew.swift
//  CashCounter2
//
//  Created by William Prescott on 2021-01-13.
//

import SwiftUI

struct PickerView: View {
    var value = 0
    @State private var selectedValue = 0
    var body: some View {
        VStack {
            Picker(selection: $selectedValue, label: Text("Qty")) {
                ForEach(0..<21) {
                    i in Text(String(i))
                }
            }
            Text("You Selected \(selectedValue)")
        }.pickerStyle(WheelPickerStyle())
    }
}
