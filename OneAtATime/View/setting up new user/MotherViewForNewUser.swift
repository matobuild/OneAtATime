//
//  MotherViewForNewUser.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/7.
//

import SwiftUI

struct MotherViewForNewUser: View {
  @EnvironmentObject var viewRouter: ViewRouter
  
  var body: some View {
    switch viewRouter.currentPage {
    case .editProfileName1:
      EditProfileName()
        .transition(.scale)
    case .selectBirthday2:
      Selectbirthday()
    case .selectSex3:
      SelectSex()
    case .sexualOrientation4:
      SexualOrientation()
    case .selectSexPreference5:
      SelectSexPreference()
    case .addPhotos6:
      AddPhotos()
    case .locationEnable7:
      LocationEnable()
    case .hostingTabBar:
      HostingTabBar()
    case .notificationScreen8:
      NotificationScreen()
    }
  }
}

struct MotherViewForNewUser_Previews: PreviewProvider {
  static var previews: some View {
    MotherViewForNewUser().environmentObject(ViewRouter())
  }
}
