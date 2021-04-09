//
//  Selectbirthday.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/27.
//

import SwiftUI

struct Selectbirthday: View {
  @State private var date = Date()
  @EnvironmentObject var viewRouter: ViewRouter
  
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
        withAnimation{
          viewRouter.currentPage = .selectSex3
        }
        
      }){
          ConfirmButton(name: "Next", isColored: true)
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
