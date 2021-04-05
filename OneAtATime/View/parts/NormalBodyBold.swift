//
//  Normal.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/28.
//

import SwiftUI

struct NormalBodyBold: View {
  let text: String
  var body: some View {
    Text(text)
      .font(.system(.body, design: .rounded))
      .bold()
  }
}


struct Normal_Previews: PreviewProvider {
    static var previews: some View {
      NormalBodyBold(text: "Example")
        .previewLayout(.sizeThatFits)
    }
}
