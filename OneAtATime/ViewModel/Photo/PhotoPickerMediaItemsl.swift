//
//  PhotoPickerViewModel.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/9.
//

import SwiftUI
class PickedMediaItems: ObservableObject {
  @Published var items = [PhotoPickerModel]()
  
  func append(item: PhotoPickerModel) {
    items.append(item)
  }
  
  func  deleteAll() {
    for (index, _) in items.enumerated(){
      items[index].delete()
    }
    
    items.removeAll()
  }
}

