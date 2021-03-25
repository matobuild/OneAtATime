//
//  LoginView.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/21.
//

import SwiftUI

struct NewLoginView: View {
  
  //    @State private var username = ""
  //    @State private var password = ""
  //    @State private var passwordConfirm = ""
  
  @State var showLoginView = false
  
  @ObservedObject private var userRegistrationViewModel = UserRegistrationViewModel()
  
  var body: some View {
    if showLoginView {
      LoginView()
        .animation(.spring())
        .transition(.slide)
    }else{
      VStack {
        Text("Create an account")
          .font(.system(.largeTitle, design: .rounded))
          .bold()
          .padding(.bottom, 30)
        
        FormField(fieldName: "Username", fieldValue: $userRegistrationViewModel.username)
        RequirementText(iconColor: userRegistrationViewModel.isUsernameLengthValid ? Color.secondary : Color(red: 251/255, green: 128/255, blue: 128/255), text: "A minimum of 4 characters", isStrikeThrough: userRegistrationViewModel.isUsernameLengthValid)
          .padding()
        
        FormField(fieldName: "Password", fieldValue: $userRegistrationViewModel.password, isSecure: true)
        VStack {
          RequirementText(iconName: "lock.open", iconColor: userRegistrationViewModel.isPasswordLengthValid ? Color.secondary : Color(red: 251/288, green: 128/255, blue: 128/255), text: "A minimum of 8 characters", isStrikeThrough: userRegistrationViewModel.isPasswordLengthValid)
          RequirementText(iconName: "lock.open", iconColor: userRegistrationViewModel.isPasswordCapitalLetter ? Color.secondary : Color(red: 251/225, green: 128/225, blue: 128/225), text: "One uppercase letter", isStrikeThrough: userRegistrationViewModel.isPasswordCapitalLetter)
        }
        .padding()
        
        FormField(fieldName: "Confirm Password", fieldValue: $userRegistrationViewModel.passwordConfirm, isSecure: true)
        RequirementText(iconColor: userRegistrationViewModel.isPasswordConfirmValid ? Color.secondary : Color(red: 251/255, green: 128/255, blue: 128/255) ,text: "Your confirm password should be the same as password", isStrikeThrough: userRegistrationViewModel.isPasswordConfirmValid)
          .padding()
          .padding(.bottom, 50)
        
        Button(action: {
          // Proceed to the next screen
        }) {
          CustomButton(name: "Sign Up")
        }
        
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
