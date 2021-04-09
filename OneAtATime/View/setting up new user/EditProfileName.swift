//
//  EditProfile.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/27.
//

import SwiftUI

struct EditProfileName: View {
  @State private var name = ""
  @EnvironmentObject var viewRouter: ViewRouter
  
  var body: some View {
    VStack {
      Spacer()
      TopTitle(title: "My name is?")
      FormField(fieldName: "name", fieldValue: $name)
      Button(action: {
        withAnimation{
          viewRouter.currentPage = .selectBirthday2
        }
      }){
        ConfirmButton(name: "Next", isColored: !(name.isEmpty))
      }
      .disabled(name.isEmpty)
      
      Spacer()
    }
    .padding()
  }
}

struct EditProfile_Previews: PreviewProvider {
  static var previews: some View {
    EditProfileName()
  }
}
