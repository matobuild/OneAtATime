//
//  OthersSexChoice.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/28.
//

import SwiftUI

struct OthersSexChoice: View {
  @Binding var otherSexChosen: String
  @State private var sexOptions = ""
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {

      VStack {
        HStack{
          Button(action: {
            presentationMode.wrappedValue.dismiss()
          }){
            HightlightButton(text: "Back")
          }
          
          Spacer()
          Button(action: {
            //pass my gender data back
            otherSexChosen = sexOptions
            presentationMode.wrappedValue.dismiss()
          }){
            HightlightButton(text: "Save")
          }
        }
        Spacer()
        TopTitle(title: "My Gender is")
        
        FormField(fieldName: "gender", fieldValue: $sexOptions)
        Spacer()
        
        //need to have selection displace
        Normal(text: "include me in searches for:")
        List{
          Text("Men")
          Text("Women")
        }
        
      }
      .padding()
  }
}
struct OthersSexChoice_Previews: PreviewProvider {
  static var previews: some View {
    OthersSexChoice(otherSexChosen: .constant("transgender"))
  }
}
