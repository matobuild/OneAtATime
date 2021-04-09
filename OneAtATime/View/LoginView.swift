//
//  LoginView.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/22.
//

import SwiftUI
import Firebase

struct LoginView: View {
  @State private var showNewLoginView = false
  @State private var email = ""
  @State private var password = ""
  @StateObject var viewRouter = ViewRouter()
  
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
          withAnimation{
            viewRouter.currentPage = .hostingTabBar
          }
        }){
          if !(email.isEmpty || password.isEmpty){
            ConfirmButton(name: "Log in ")
          }else{
            ConfirmButton(name: "Log in ")
              .grayscale(0.4)
              .disabled(true)
          }
          
        }
        
        HStack {
          NormalBodyBold(text: "Dont have an account?")
          
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

