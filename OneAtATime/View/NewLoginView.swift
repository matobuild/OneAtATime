//
//  LoginView.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/21.
//

import SwiftUI
import Firebase

struct NewLoginView: View {
  
  @State private var showLoginView = false
  @State private var showMotherViewForNewUser: Bool = false
  @StateObject var viewRouter = ViewRouter()
  
  @ObservedObject private var userRegistrationViewModel = UserRegistrationViewModel()
  
  var body: some View {
    switch true {
    case showLoginView:
      LoginView()
        .animation(.spring())
        .transition(.slide)
    case showMotherViewForNewUser:
      MotherViewForNewUser()
        .environmentObject(viewRouter)
        .animation(.spring())
        .transition(.slide)
    default:
        VStack {
          TopTitle(title: "Create an account")
          
          FormField(fieldName: "Email", fieldValue: $userRegistrationViewModel.email)
          RequirementText(iconColor: userRegistrationViewModel.isEmailValid ? Color.secondary : Color(red: 251/255, green: 128/255, blue: 128/255), text: "Is a valid email", isStrikeThrough: userRegistrationViewModel.isEmailValid)
            .padding()
          
          FormField(fieldName: "Password", fieldValue: $userRegistrationViewModel.password, isSecure: true)
          VStack {
            RequirementText(iconName: "lock.open", iconColor: userRegistrationViewModel.isPasswordLengthValid ? Color.secondary : Color(red: 251/288, green: 128/255, blue: 128/255), text: "A minimum of 8 characters", isStrikeThrough: userRegistrationViewModel.isPasswordLengthValid)
            RequirementText(iconName: "lock.open", iconColor: userRegistrationViewModel.isPasswordCapitalLetter ? Color.secondary : Color(red: 251/225, green: 128/225, blue: 128/225), text: "One uppercase letter", isStrikeThrough: userRegistrationViewModel.isPasswordCapitalLetter)
          }
          .padding()

          
          Button(action: {
            // Proceed to the next screen
            createNewLogin()
            self.showMotherViewForNewUser = true
          }) {
            ConfirmButton(name: "Sign Up",isColored: (userRegistrationViewModel.isEmailValid && userRegistrationViewModel.isPasswordLengthValid && userRegistrationViewModel.isPasswordCapitalLetter))
          }
          .disabled(!(userRegistrationViewModel.isEmailValid && userRegistrationViewModel.isPasswordLengthValid && userRegistrationViewModel.isPasswordCapitalLetter))
          
          HStack {
            Text("Already have an account?")
              .font(.system(.body, design: .rounded))
              .bold()
            
            Button(action: {
              self.showLoginView = true
            }){
              HightlightButton(text: "Sign In")
            }
          }
          .padding(.top, 50)
          
          Spacer()
        }
        .padding()
    }
    
  }
  
  func createNewLogin() {
    Auth.auth().createUser(withEmail: userRegistrationViewModel.email, password: userRegistrationViewModel.password) { authResult, error in
      if error != nil {
        print(error?.localizedDescription ?? "")
      } else {
        print("successfully create new user login")
        //go to next page
      }
    }
  }
}

struct NewLoginView_Previews: PreviewProvider {
  static var previews: some View {
    NewLoginView()
  }
}

struct FormField: View {
  var fieldName = ""
  @Binding var fieldValue: String
  
  var isSecure = false
  
  var body: some View {
    
    VStack {
      if isSecure {
        SecureField(fieldName, text: $fieldValue)
          .font(.system(size: 20, weight: .semibold, design: .rounded))
          .padding(.horizontal)
        
      } else {
        TextField(fieldName, text: $fieldValue)                 .font(.system(size: 20, weight: .semibold, design: .rounded))
          .padding(.horizontal)
      }
      
      Divider()
        .frame(height: 1)
        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
        .padding(.horizontal)
      
    }
  }
}

struct RequirementText: View {
  
  var iconName = "xmark.square"
  var iconColor = Color(red: 251/255, green: 128/255, blue: 128/255)
  
  var text = ""
  var isStrikeThrough = false
  
  var body: some View {
    HStack {
      Image(systemName: iconName)
        .foregroundColor(iconColor)
      Text(text)
        .font(.system(.body, design: .rounded))
        .foregroundColor(.secondary)
        .strikethrough(isStrikeThrough)
      Spacer()
    }
  }
}
