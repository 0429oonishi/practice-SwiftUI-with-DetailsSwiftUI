//
//  ContentView.swift
//  ToggleSample
//
//  Created by 大西玲音 on 2021/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var isLike = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isLike) { //$: オブジェクトの参照を示す
                Text("Like or Not")
                    .font(.largeTitle)
            }
            .fixedSize()
            .padding(50)
            
            if isLike {
                Image(systemName: "heart.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
            } else {
                Image(systemName: "heart.slash")
                    .font(.system(size: 80))
                    .foregroundColor(.gray)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
