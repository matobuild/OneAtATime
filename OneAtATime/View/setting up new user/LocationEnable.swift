//
//  locationEnable.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/5.
//

import SwiftUI

struct LocationEnable: View {
  @State var condition = false
    var body: some View {
      VStack {
        TopTitle(title: "Enable location")
        Picture(title: "location.viewfinder")
        TableHeader(header: "*at least two photos")
        Button(action: {
          //go to next page
          condition = true
          
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

