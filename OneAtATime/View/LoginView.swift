//
//  LoginView.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/22.
//

import SwiftUI
import Firebase

struct LoginView: View {
  @State var showNewLoginView = false
  @State var email = ""
  @State var password = ""
  
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
                FormField(fieldName: "Username", fieldValue: $email)
                FormField(fieldName: "Password", fieldValue: $password, isSecure: true)
        Button(action: {
          //go to login
          login()
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
  
  func login() {
    Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
      if error != nil {
        print(error?.localizedDescription ?? "")
      } else {
        print("success")
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
