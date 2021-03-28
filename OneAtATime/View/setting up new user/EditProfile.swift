//
//  EditProfile.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/27.
//

import SwiftUI

struct EditProfile: View {
  @State private var name = ""
  
  var body: some View {
    VStack {
      Spacer()
      TopTitle(title: "My name is?")
      FormField(fieldName: "name", fieldValue: $name)
      Button(action: {
        //go to next page
      }){
        if !(name.isEmpty){
          ConfirmButton(name: "Next")
        }else{
          ConfirmButton(name: "Next")
            .grayscale(0.4)
            .disabled(true)
        }
      }
      
      Spacer()
    }
    .padding()
  }
}

struct EditProfile_Previews: PreviewProvider {
  static var previews: some View {
    EditProfile()
  }
}
