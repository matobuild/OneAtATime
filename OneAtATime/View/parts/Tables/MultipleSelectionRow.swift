//
//  MultipleSelectionRow.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/29.
//

import SwiftUI

struct MultipleSelectionRow: View {
  var title: String
  var isSelected: Bool
  var action: () -> Void
  
  var body: some View {
    Button(action: self.action) {
      HStack {
        Text(title)
        Spacer()
        if self.isSelected {
          Image(systemName: "checkmark")
            .foregroundColor(.orange)
        }
      }
    }
  }
}

//struct MultipleSelectionRow_Previews: PreviewProvider {
//  static var previews: some View {
//    MultipleSelectionRow(title: "dd", isSelected: true, action: () -> Void)
//  }
//}
