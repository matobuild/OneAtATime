//
//  NotificationScreen.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct NotificationScreen: View {
  var body: some View {
    VStack {
      TopTitle(title: "Enable Notification")
      Picture(title: "sparkle")
      Button(action: {
        //enable notification
      }){
          ConfirmButton(name: "Allow",isColored: true)
        }
        
      }
  }
}

struct NotificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationScreen()
    }
}
