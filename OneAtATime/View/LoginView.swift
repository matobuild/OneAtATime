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
        TopTitle(title: "Log in")
        
                FormField(fieldName: "Email", fieldValue: $email)
                FormField(fieldName: "Password", fieldValue: $password, isSecure: true)
        
        Button(action: {
          //go to login
          login()
        }){
          if !(email.isEmpty || password.isEmpty){
            CustomButton(name: "Log in ")
          }else{
            CustomButton(name: "Log in ")
              .grayscale(0.4)
              .disabled(true)
          }
          
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
        print("successfully login")
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
