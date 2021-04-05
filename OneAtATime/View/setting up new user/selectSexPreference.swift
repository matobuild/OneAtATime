//
//  selectSexPreference.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/28.
//

import SwiftUI

struct selectSexPreference: View {
  @State private var likeWhatSex = ""
  
  var body: some View {
    VStack {
      Spacer()
      TopTitle(title: "Match me with")
      
      Button(action: {
        likeWhatSex = "Male"
        //save sex
        //hightlight the button
      }) {
        if likeWhatSex == "Male"{
          OptionsButton(option: "Male", isChosen: true)
        }else{
          OptionsButton(option: "Male")
        }
      }

      Button(action: {
        likeWhatSex = "Female"
        //hightlight the button
      }) {
        if likeWhatSex == "Female"{
          OptionsButton(option: "Female", isChosen: true)
        }else{
          OptionsButton(option: "Female")
        }
      }
      
      Button(action: {
        likeWhatSex = "Everyone"
        //hightlight the button
      }) {
        if likeWhatSex == "Everyone"{
          OptionsButton(option: "Everyone", isChosen: true)
        }else{
          OptionsButton(option: "Everyone")
        }
      }
      
      Spacer()
      
      Button(action: {
        //go to next page
      }){
        ConfirmButton(name: "Next", isColored: !(likeWhatSex.isEmpty))
      }
      .disabled(likeWhatSex.isEmpty)
      
      Spacer()
    }
    .padding()
  }
}

struct selectSexPreference_Previews: PreviewProvider {
    static var previews: some View {
        selectSexPreference()
    }
}
