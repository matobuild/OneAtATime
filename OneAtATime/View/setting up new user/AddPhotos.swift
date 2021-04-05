//
//  AddPhotos.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/1.
//

import SwiftUI

struct AddPhotos: View {
  @ObservedObject var mediaItems = PickedMediaItems()
  @State private var showSheet = false
  
  var body: some View {
    NavigationView {
      VStack {
        TopTitle(title: "Add Photos")
        Normal(text: "at least 2 photes")
        List(mediaItems.items, id: \.id){ item in
          Image(uiImage: item.photo ?? UIImage())
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        .navigationBarItems(leading: Button(action: {
          mediaItems.deleteAll()
        }, label: {
          Image(systemName: "trash")
            .foregroundColor(.red)
        }), trailing: Button(action: {
          showSheet = true
        }, label: {
          Image(systemName: "plus")
      }))
        
        Button(action: {
          //go to next page
          
        }){
          if mediaItems.items.count >= 2{
            ConfirmButton(name: "Next")
          }else{
            ConfirmButton(name: "Next")
              .grayscale(0.4)
              .disabled(true)
          }
        }
        
      }
    }
    .sheet(isPresented: $showSheet, content: {
      PhotoPicker(mediaItems: mediaItems) {didSelectItems in
        //handle didselctitem value here
        showSheet = false
        
      }
    })
  }
}

struct AddPhotos_Previews: PreviewProvider {
  static var previews: some View {
    AddPhotos()
  }
}
