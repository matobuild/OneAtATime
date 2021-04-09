//
//  selectSexPreference.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/28.
//

import SwiftUI

struct SelectSexPreference: View {
  @State private var likeWhatSex = ""
  @EnvironmentObject var viewRouter: ViewRouter
  
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
        withAnimation{
          viewRouter.currentPage = .addPhotos6
        }
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
        SelectSexPreference()
    }
}
