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
  @Published var username = ""
  @Published var password = ""
  @Published var passwordConfirm = ""
  
  //output
  @Published var isUsernameLengthValid = false
  @Published var isPasswordLengthValid = false
  @Published var isPasswordCapitalLetter = false
  @Published var isPasswordConfirmValid = false


private var cancellableSet: Set<AnyCancellable> = []

init(){
  $username
    .receive(on: RunLoop.main)
    .map{ username in
      return username.count >= 4
    }
    .assign(to: \.isUsernameLengthValid, on: self)
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
  
  Publishers.CombineLatest($password, $passwordConfirm)
    .receive(on: RunLoop.main)
    .map{ (password, passwordConfirm) in
      return !passwordConfirm.isEmpty && (passwordConfirm == password)
    }
    .assign(to: \.isPasswordConfirmValid, on: self)
    .store(in: &cancellableSet)
  
  
}
}
