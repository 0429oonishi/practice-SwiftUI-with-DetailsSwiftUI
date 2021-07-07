//
//  ContentView.swift
//  PickerNavigationView
//
//  Created by 大西玲音 on 2021/07/07.
//

import SwiftUI

struct ContentView: View {
    @State var selectedSize = 2
    @State var selectedColor = 0
    let sizes = ["XS", "S", "M", "L", "XL"]
    let colors = ["Red", "Green", "Blue"]
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("サイズ").font(.headline),
                        footer: Text("UIサイズの少し大きめです").padding(.bottom, 20)) {
                    Picker(selection: $selectedSize, label: Text("Size")) {
                        ForEach(0..<sizes.count) { index in
                            Text(sizes[index])
                        }
                    }
                    Text("選んだサイズ: \(sizes[selectedSize])")
                }
                
                Section(header: Text("カラー").font(.headline)) {
                    Picker(selection: $selectedColor, label: Text("Color")) {
                        ForEach(0..<colors.count) { index in
                            Text(colors[index])
                        }
                    }
                    Text("選んだ色: \(colors[selectedColor])")
                }
            }
            .navigationTitle(Text("サイズと色"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
