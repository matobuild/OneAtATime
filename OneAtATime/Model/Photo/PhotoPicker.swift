//
//  PhotoPicker.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/4/4.
//

import SwiftUI
import PhotosUI

struct PhotoPicker: UIViewControllerRepresentable {
  @ObservedObject var mediaItems: PickedMediaItems
  var didFinishPicking: (_ didSelectItems: Bool) -> Void
  typealias UIViewControllerType = PHPickerViewController
  
  func makeUIViewController(context: Context) -> PHPickerViewController {
    var config = PHPickerConfiguration()
    config.filter = .images
    config.selectionLimit = 0
    config.preferredAssetRepresentationMode = .current
    
    let controller = PHPickerViewController(configuration: config)
    controller.delegate = context.coordinator
    return controller
  }
  
  func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
    
  }
  
  func makeCoordinator() -> Coordinator {
    Coordinator(with: self)
  }
  
  class Coordinator: PHPickerViewControllerDelegate {
    var photoPicker: PhotoPicker
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
      photoPicker.didFinishPicking(!results.isEmpty)
      
      guard !results.isEmpty else {
        return
      }
      
      for result in results{
        let itemProvider = result.itemProvider
        self.getPhoto(from: itemProvider)
      }
      
    }
    
    init(with photoPicker: PhotoPicker) {
      self.photoPicker = photoPicker
    }
    
    private func getPhoto(from itemProvider: NSItemProvider){
      if itemProvider.canLoadObject(ofClass: UIImage.self) {
        itemProvider.loadObject(ofClass: UIImage.self) {object, error in
          if let error = error{
            print(error.localizedDescription)
          }
          
          if let image = object as? UIImage{
            DispatchQueue.main.async {
              self.photoPicker.mediaItems.append(item: PhotoPickerModel(with: image))
            }
          }
        }
      }
    }
    
    
  }
  
}
