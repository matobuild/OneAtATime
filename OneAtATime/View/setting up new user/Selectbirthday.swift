//
//  Selectbirthday.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/27.
//

import SwiftUI

struct Selectbirthday: View {
  @State private var date = Date()

  var body: some View {
    VStack {
      Spacer()
      TopTitle(title: "My Date of Birth is?")
      DatePicker(
          "Birthday",
          selection: $date,
          displayedComponents: [.date]
      )
      .datePickerStyle(WheelDatePickerStyle())
      .labelsHidden()
      
      Button(action: {
        //go to next page
      }){
          ConfirmButton(name: "Next")
      }
      
      Spacer()
    }
    .padding()
  }
}

struct Selectbirthday_Previews: PreviewProvider {
    static var previews: some View {
        Selectbirthday()
    }
}
