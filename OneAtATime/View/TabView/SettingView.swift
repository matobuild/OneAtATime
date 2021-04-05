//
//  SystemView.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct SettingView: View {
  var body: some View {
    VStack {
      Spacer()
      Image("6")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 150, height: 150)
        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        .overlay(Circle()
                  .stroke(Color.white,lineWidth: 1))
      HStack {
        NormalBodyBold(text: "Name")
        NormalBodyBold(text: ", age")
      }
      Text("Job")
        .font(.system(.body, design: .rounded))
      Text("University")
        .font(.system(.body, design: .rounded))
      HStack{
        ButtonWithIcon(name: "SETTINGS", image: "gear")
        ButtonWithIcon(name: "EDIT INFO", image: "pencil")
      }
      .padding(.horizontal)
      Spacer()
    }
  }
}

struct SystemView_Previews: PreviewProvider {
  static var previews: some View {
    SettingView()
  }
}
