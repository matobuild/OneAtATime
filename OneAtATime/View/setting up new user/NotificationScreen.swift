//
//  NotificationScreen.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct NotificationScreen: View {
  @EnvironmentObject var viewRouter: ViewRouter
  
  var body: some View {
    VStack {
      TopTitle(title: "Enable Notification")
      Picture(title: "sparkle")
      Button(action: {
        //enable notification
        withAnimation{
          viewRouter.currentPage = .hostingTabBar
        }
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
