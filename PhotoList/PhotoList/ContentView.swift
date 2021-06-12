//
//  ContentView.swift
//  PhotoList
//
//  Created by 大西玲音 on 2021/06/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(photos) { photo in
            RowView(photo: photo)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
