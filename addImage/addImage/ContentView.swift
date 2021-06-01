//
//  ContentView.swift
//  addImage
//
//  Created by 大西玲音 on 2021/06/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("a")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 400)
                .scaleEffect(1.4)
                .offset(x: 30, y: 30)
                .clipped()
                .overlay(
                    Text("ジラーチ")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .offset(x: 0, y: -50)
                )
        }
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
