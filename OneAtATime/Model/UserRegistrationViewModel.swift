//
//  UserRegistrationViewModel.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/21.
//

import Foundation
import Combine

class UserRegistrationViewModel: ObservableObject {
  //input
  @Published var email = ""
  @Published var password = ""
  
  //output
  @Published var isEmailValid = false
  @Published var isPasswordLengthValid = false
  @Published var isPasswordCapitalLetter = false

private var cancellableSet: Set<AnyCancellable> = []

init(){
  $email
    .receive(on: RunLoop.main)
    .map{email in
      return email.contains("@") && email.contains(".com")
    }
    .assign(to: \.isEmailValid, on: self)
    .store(in: &cancellableSet)

  $password
    .receive(on: RunLoop.main)
    .map{ password in
      return password.count >= 8
    }
    .assign(to: \.isPasswordLengthValid, on: self)
    .store(in: &cancellableSet)
  
  $password
    .receive(on: RunLoop.main)
    .map{ password in
      let pattern = "[A-Z]"
      if let _ = password.range(of: pattern, options: .regularExpression){
        return true
      }else{
        return false
      }
    }
    .assign(to: \.isPasswordCapitalLetter, on: self)
    .store(in: &cancellableSet)
}
}
