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
       
      
      Button(action: {
        //go to next page
        condition = true
        
      }){
        if condition{
          ConfirmButton(name: "Next")
        }else{
          ConfirmButton(name: "Next")
            .grayscale(0.4)
            .disabled(true)
          
        }
        
      }
    }
}

struct LocationEnable_Previews: PreviewProvider {
    static var previews: some View {
        LocationEnable()
    }
}

