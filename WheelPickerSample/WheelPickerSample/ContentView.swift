//
//  ContentView.swift
//  WheelPickerSample
//
//  Created by 大西玲音 on 2021/07/05.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = 0
    let colorViews = [Color.red, Color.green, Color.blue]
    let colorNames = ["Red", "Green", "Blue"]
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor,
                   label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            HStack {
                colorViews[selectedColor]
                    .frame(width: 50, height: 100)
                Text("value: \(selectedColor)")
                    .frame(width: 60)
                Text("color: \(colorNames[selectedColor])")
                    .frame(width: 100)
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
