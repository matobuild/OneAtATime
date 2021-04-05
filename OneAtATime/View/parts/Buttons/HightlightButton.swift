//
//  HightlightButton.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/25.
//

import SwiftUI

struct HightlightButton: View {
  let text: String
  var body: some View {
    Text(text)
      .font(.system(.body, design: .rounded))
      .bold()
      .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
  }
}

struct HightlightButton_Previews: PreviewProvider {
  static var previews: some View {
    HightlightButton(text: "example")
      .previewLayout(.sizeThatFits)
  }
}
