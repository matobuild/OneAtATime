//
//  CustomButton.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/22.
//

import SwiftUI

struct ConfirmButton: View {
  let name : String
  var isColored = false
  
  var body: some View {
    if isColored == true{
      Text(name)
        .font(.system(.body, design: .rounded))
        .foregroundColor(.white)
        .bold()
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
        .padding(.horizontal)
    }else{
      Text(name)
        .font(.system(.body, design: .rounded))
        .foregroundColor(.white)
        .bold()
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
        .grayscale(0.6)
        .padding(.horizontal)
    }
    
   
  }
}

struct CustomButton_Previews: PreviewProvider {
  static var previews: some View {
    ConfirmButton(name: "example")
  }
}
