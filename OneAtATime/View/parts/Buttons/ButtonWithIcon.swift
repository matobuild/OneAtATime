//
//  ButtonWithIcon.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct ButtonWithIcon: View {
  var name: String
  var image: String
  
    var body: some View {
      HStack {
        Label(name, systemImage: image)
          .font(.system(.caption, design: .rounded))
          .foregroundColor(.white)
          .padding()
          .frame(minWidth: 0, maxWidth: .infinity)
          .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
          .cornerRadius(10)
      }
    }
}

struct ButtonWithIcon_Previews: PreviewProvider {
    static var previews: some View {
      ButtonWithIcon(name: "Example", image: "message")
    }
}
