//
//  ContentView.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/20.
//

import SwiftUI

struct ContentView: View {
  @State var showNewLoginView: Bool = false
  
  var body: some View {
    if showNewLoginView {
      NewLoginView()
        .animation(.spring())
        .transition(.slide)
    }else{
      ZStack {
        Color.red
          .ignoresSafeArea()
        VStack {
          TopTitle(title: "One at a time")
            .foregroundColor(.white)
          
          Button(action: {
            //go to net page
            self.showNewLoginView = true
          }) {
            Text("Get started")
              .font(.system(.body, design: .rounded))
              .fontWeight(.semibold)
          }
          .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
          .padding()
          .foregroundColor(.red)
          .background(Color(.white))
          .cornerRadius(40)
          .padding(.horizontal, 20)
        }
        
        
      }
      .animation(.none)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


/*
 1.sign up
 2.profile page
 3.display person page
 4.messaging
 */
 
