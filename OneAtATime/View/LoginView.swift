//
//  LoginView.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/22.
//

import SwiftUI

struct LoginView: View {
  @State var showNewLoginView = false
  
  var body: some View {
    if showNewLoginView{
      NewLoginView()
        .animation(.spring())
        .transition(.slide)
    }else{
      VStack{
        Text("Log in")
          .font(.system(.largeTitle, design: .rounded))
          .bold()
          .padding(.bottom, 30)
        //        FormField(fieldName: "Username", fieldValue: <#T##Binding<String>#>)
        //        FormField(fieldName: "Password", fieldValue: <#T##Binding<String>#>, isSecure: true)
        Button(action: {
          //go to login
        }){
          CustomButton(name: "Log in ")
        }
        
        HStack {
          Text("Dont have an account?")
            .font(.system(.body, design: .rounded))
            .bold()
          
          Button(action: {
            self.showNewLoginView = true
          }){
            HightlightButton(text: "Sign Up")
          }
        }
        .padding(.top, 50)
        
        Spacer()
      }
      .padding()
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
