//
//  RowView.swift
//  PhotoList
//
//  Created by 大西玲音 on 2021/06/12.
//

import SwiftUI

struct RowView: View {
    
    var photo: PhotoData
    
    var body: some View {
        HStack {
            Image(photo.imageName)
                .resizable()
                .frame(width: 100, height: 100)
            Text(photo.title)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(photo: photos[0])
            .previewLayout(.fixed(width: 300, height: 80))
    }
}
