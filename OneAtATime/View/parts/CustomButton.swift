//
//  CustomButton.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/22.
//

import SwiftUI

struct CustomButton: View {
  let name : String
  var body: some View {
    Text(name)
      .font(.system(.body, design: .rounded))
      .foregroundColor(.white)
      .bold()
      .padding()
      .frame(minWidth: 0, maxWidth: .infinity)
      .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
      .cornerRadius(10)
      .padding(.horizontal)
  }
}

struct CustomButton_Previews: PreviewProvider {
  static var previews: some View {
    CustomButton(name: "example")
  }
}
