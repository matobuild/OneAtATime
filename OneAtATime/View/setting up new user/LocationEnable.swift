//
//  locationEnable.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct LocationEnable: View {
  @State var condition = false
  @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
      VStack {
        TopTitle(title: "Enable location")
        Picture(title: "location.viewfinder")
      
        Button(action: {
          condition = true
          withAnimation{
            viewRouter.currentPage = .notificationScreen8
          }
        }){
            ConfirmButton(name: "Allow",isColored: true)
          }
          
        }
    }
}

struct LocationEnable_Previews: PreviewProvider {
    static var previews: some View {
        LocationEnable()
    }
}

