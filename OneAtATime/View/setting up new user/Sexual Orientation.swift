//
//  Sexual Orientation.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/29.
//

import SwiftUI

struct SexualOrientation: View {
  var orientationChoices = ["Straight", "Gay", "Lesbian", "Bisexual", "Asexual", "Demisexual", "Pansexual", "Queer", "Questioning" ]
  @State private var selections: [String] = []
  
  var body: some View {
    VStack {
      Spacer()
      TopTitle(title: "My sexual Orientation is ?")
      
      TableHeader(header: "* can select multiple")
      List{
        ForEach(orientationChoices, id: \.self) { choice in
          MultipleSelectionRow(title: choice, isSelected: selections.contains(choice)){
            if self.selections.contains(choice) {
              self.selections.removeAll(where: { $0 == choice })
            }
            else {
              self.selections.append(choice)
            }
          }
        }
      }
      
      Button(action: {
        //go to next page
      }){
        ConfirmButton(name: "Next")
        
      }
      
      Spacer()
    }
    .padding()
  }
}

struct Sexual_Orientation_Previews: PreviewProvider {
  static var previews: some View {
    SexualOrientation()
  }
}