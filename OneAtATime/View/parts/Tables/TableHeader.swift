//
//  TableHeader.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/29.
//

import SwiftUI

struct TableHeader: View {
  let header: String
  var body: some View {
    HStack {
      Text(header)
        .font(.system(.subheadline, design: .rounded))
      Spacer()
    }.padding(.horizontal)
  }
}

struct TableHeader_Previews: PreviewProvider {
    static var previews: some View {
      TableHeader(header: "EXAMPLE")
    }
}
