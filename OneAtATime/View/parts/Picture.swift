//
//  Picture.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct Picture: View {
  let title: String
  var body: some View {
    Image(systemName: title)
      .resizable()
      .scaledToFit()
      .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
      .foregroundColor(.orange)
      .padding(.bottom, 30)
  }
}

struct Picture_Previews: PreviewProvider {
    static var previews: some View {
      Picture(title: "sleep")
    }
}
