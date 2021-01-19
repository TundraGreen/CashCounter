//
//  RowView.swift
//  CashCounter
//
//  Created by William Prescott on 2021-01-13.
//

import SwiftUI

struct RowView: View {
    var imageName : String
    var denomination : String
    var currentCount: Int
    var pickerVisible: Bool
    @State var newCount: Int
    
    var body: some View {
        HStack {
//           Image(imageName)
//                .scaleEffect(0.1)
//            Spacer()
            Text(denomination)
                .padding(5)
            Spacer()
//            PickerView()
            TextField("\(currentCount)", text: "\($newCount)")
        }
        .padding(.leading)
    }
}
