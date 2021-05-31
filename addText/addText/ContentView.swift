//
//  ContentView.swift
//  addText
//
//  Created by 大西玲音 on 2021/05/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 20) {
                Text("Text1")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("Text1")
                    .padding()
                Text("Text1")
                    .foregroundColor(.blue)
                    .border(Color.green, width: 2)
                    .font(.system(size: 30))
                    .padding(.all, 40)
            }
            Spacer()
            HStack {
                Text("Text2")
                    .padding()
                    .frame(width: 100, height: 40)
                    .offset(x: -30, y: 30)
                VStack(alignment: .center, spacing: 20) {
                    Text("Text2Text2Text2Text2Text2")
                        .font(.callout)
                    Text("Text2Text2Text2Text2Text2Text2")
                        .lineLimit(2)
                        .foregroundColor(.red)
                        .padding(.vertical, 30)
                }
            }
            Text("Text3")
                .frame(width: 200, height: 50)
                .border(Color.blue, width: 2)
                .multilineTextAlignment(.trailing)
                .padding()
            Text("No.").bold() + Text("2949").foregroundColor(.red)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
