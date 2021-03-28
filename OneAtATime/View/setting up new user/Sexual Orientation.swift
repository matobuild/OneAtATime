//
//  Sexual Orientation.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/29.
//

import SwiftUI

struct SexualOrientation: View {
  var orientationChoice = ["Straight", "Gay", "Lesbian", "Bisexual", "Asexual", "Demisexual", "Pansexual", "Queer", "Questioning" ]
  @State private var orientationChoiceChosen: [String] = nil
  
  var body: some View {
    VStack {
      Spacer()
      TopTitle(title: "My sexual Orientation is ?")
      
      TableHeader(header: "select up to 3")
      List{
        ForEach(orientationChoice, id: \.self) { orientationchoice in
          SelectionCell(listItem: orientationchoice, selectedItem: self.$orientationChoiceChosen)
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
