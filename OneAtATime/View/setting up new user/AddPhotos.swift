//
//  AddPhotos.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/1.
//

import SwiftUI

struct AddPhotos: View {
  @State var images : [UIImage] = []
  @State var picker = false
  
    var body: some View {
      VStack {
        TopTitle(title: "Add Photos")
        Normal(text: "at least 2 photes")
        
      }
      
    }
}

struct AddPhotos_Previews: PreviewProvider {
    static var previews: some View {
        AddPhotos()
    }
}
