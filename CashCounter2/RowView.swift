//
//  RowView.swift
//  CashCounter
//
//  Created by William Prescott on 2021-01-13.
//

import SwiftUI

struct RowView: View {
    @Binding var numberOfUnits : String
    var name : String
//    var imageName : String
    
    var body: some View {
        HStack {
        /*
           Image(imageName)
                .scaleEffect(0.1)
            Spacer()
            */
            Text(name)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            Spacer()
//            PickerView()
            TextField("0", text: $numberOfUnits)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 100))
                .multilineTextAlignment(.trailing)
                .keyboardType(.numberPad)
//                .onChange(of: numberOfUnits , perform: {print("Here")})
        }
        .padding(EdgeInsets(top: 0, leading: 120, bottom: 0, trailing: 20))
    }
}
