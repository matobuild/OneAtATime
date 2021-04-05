//
//  TopTitle.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/27.
//

import SwiftUI

struct TopTitle: View {
  let title: String
  var body: some View {
    Text(title)
      .font(.system(.largeTitle, design: .rounded))
      .bold()
      .padding(.bottom, 30)
  }
}

struct TopTitle_Previews: PreviewProvider {
    static var previews: some View {
      TopTitle(title: "Example")
        .previewLayout(.sizeThatFits)
    }
}
