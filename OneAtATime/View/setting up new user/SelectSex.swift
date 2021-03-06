//
//  SelectSex.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/28.
//

import SwiftUI

struct SelectSex: View {
  @State private var sexChosen = ""
  @State private var otherSexChosen = ""
  @State private var isModel = false
  @EnvironmentObject var viewRouter: ViewRouter
  
  var body: some View {
    VStack {
      Spacer()
      TopTitle(title: "I am a")
      
      Button(action: {
        sexChosen = "Male"
        otherSexChosen = ""
        //save sex
      
      }) {
        if sexChosen == "Male"{
          OptionsButton(option: "Male", isChosen: true)
        }else{
          OptionsButton(option: "Male")
        }
      }
      
      Button(action: {
        sexChosen = "Female"
        otherSexChosen = ""
     
      }) {
        if sexChosen == "Female"{
          OptionsButton(option: "Female", isChosen: true)
        }else{
          OptionsButton(option: "Female")
        }
      }
      
      Button(action: {
        sexChosen = ""
        isModel = true
        
      }) {
        if otherSexChosen != ""{
          OptionsButton(option: otherSexChosen == "" ? "Others" : otherSexChosen, isChosen: true)
        }else{
          OptionsButton(option: otherSexChosen == "" ? "Others" : otherSexChosen)
        }
        
        
      }
      .sheet(isPresented: $isModel, content: {
        OthersSexChoice(otherSexChosen: $otherSexChosen)
      })
      
      Spacer()
      Button(action: {
        withAnimation{
          viewRouter.currentPage = .sexualOrientation4
        }
  
      }){
        ConfirmButton(name: "Next", isColored: (sexChosen != "" || otherSexChosen != ""))
      }
      .disabled(!(sexChosen != "" || otherSexChosen != ""))
      
      Spacer()
    }
    .padding()
  }
}

struct SelectSex_Previews: PreviewProvider {
  static var previews: some View {
    SelectSex()
  }
}
