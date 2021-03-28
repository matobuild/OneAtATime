//
//  OthersSexChoice.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/28.
//

import SwiftUI

struct OthersSexChoice: View {
  let gender = ["Men", "Women"]
  @State private var searchMeUpInGender: String? = "Men"
  
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
       
        TableHeader(header: "include me in searches for:")
        List{
          ForEach(gender, id: \.self) { choice in
            SelectionCell(listItem: choice, selectedItem: self.$searchMeUpInGender)
          }
        }
        .frame(minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 250)
        Spacer()
      }
      .padding()
  }
}
struct OthersSexChoice_Previews: PreviewProvider {
  static var previews: some View {
    OthersSexChoice(otherSexChosen: .constant("transgender"))
  }
}

