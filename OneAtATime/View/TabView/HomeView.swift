//
//  HomeView.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    VStack{
      Image(systemName: "message")
        .resizable()
        .scaledToFit()
      Text("home")
    }
      
  }
}



struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
