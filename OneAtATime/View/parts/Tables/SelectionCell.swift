//
//  SelectionCell.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/29.
//

import SwiftUI

struct SelectionCell: View {
  let listItem: String
  @Binding var selectedItem: String?
  
  var body: some View {
    HStack {
      Text(listItem)
      Spacer()
      if listItem == selectedItem{
        Image(systemName: "checkmark.circle")
          .foregroundColor(.orange)
      }else{
        Image(systemName: "circle")
          .foregroundColor(.orange)
      }
    }
    .onTapGesture {
      self.selectedItem = self.listItem
    }
  }
}

struct SelectionCell_Previews: PreviewProvider {
    static var previews: some View {
      SelectionCell(listItem: "EXAMPLE LIST", selectedItem: .constant("EXAMPLE"))
        .previewLayout(.sizeThatFits)
    }
}
