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
//        Image(
        HStack {
         NormalBodyBold(text: "Name")
          NormalBodyBold(text: ", age")
        }
        
      
        
      }
    }
}

struct SystemView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
