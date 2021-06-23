//
//  ContentView.swift
//  RandomButton
//
//  Created by 大西玲音 on 2021/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var num = 0 // @State: numを変更可能な変数にする
    
    var body: some View {
        Button(action: {
            num = Int.random(in: 0...100)
        }, label: {
            Text(String(num))
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
