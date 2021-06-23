//
//  ContentView.swift
//  RandomButton
//
//  Created by 大西玲音 on 2021/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            let num = Int.random(in: 0...100)
            print(num)
        }, label: {
            Text("Random")
                .font(.largeTitle)
                .frame(width: 200,
                       height: 50,
                       alignment: .center)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(10)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
