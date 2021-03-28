//
//  OptionsButton.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/28.
//

import SwiftUI

struct OptionsButton: View {
  let option : String
  var isChosen = true
  
  var body: some View {
    if isChosen == true{
      Text(option)
        .font(.system(.body, design: .rounded))
        .foregroundColor(.orange)
        .bold()
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .overlay(
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color.orange, lineWidth: 2)
        )
        .padding(.horizontal)
    }else{
      Text(option)
        .font(.system(.body, design: .rounded))
        .foregroundColor(.gray)
        .bold()
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .overlay(
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray, lineWidth: 2)
        )
        .padding(.horizontal)
    }
    
  }
  
}

struct OptionsButton_Previews: PreviewProvider {
  static var previews: some View {
    OptionsButton(option: "Example")
  }
}
