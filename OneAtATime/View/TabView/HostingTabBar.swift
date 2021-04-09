//
//  HostingTabBar.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct HostingTabBar: View {
  
  @State private var selectedTab: Tab = .home
  
  var body: some View {
    TabView(selection: $selectedTab) {
      HomeView()
        .tag(0)
        .tabItem {
          Text("Home")
          Image(systemName: "house.fill")
        }
      MessageView()
        .tag(1)
        .tabItem {
          Text("Message")
          Image(systemName: "message")
        }
      SettingView()
        .tag(3)
        .tabItem {
          Text("Settings")
          Image(systemName: "gear")
        }
    }
    .accentColor(.orange)
  }
}
  struct HostingTabBar_Previews: PreviewProvider {
    static var previews: some View {
      HostingTabBar()
    }
  }
