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
  @EnvironmentObject var viewRouter: ViewRouter
  
  var body: some View {
    NavigationView {
      VStack {
        TopTitle(title: "Add Photos")
        List(mediaItems.items, id: \.id){ item in
          Image(uiImage: item.photo ?? UIImage())
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        .navigationTitle("HIDE ME")
//        .navigationBarTitleDisplayMode(.inline)
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
//        .padding(.bottom, 30)
        
        TableHeader(header: "*at least two photos")
        Button(action: {
          withAnimation{
            viewRouter.currentPage = .locationEnable7
          }
          
        }){
          ConfirmButton(name: "Next",isColored: (mediaItems.items.count >= 2))
        }
        .disabled(!(mediaItems.items.count >= 2))
        Spacer()
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
