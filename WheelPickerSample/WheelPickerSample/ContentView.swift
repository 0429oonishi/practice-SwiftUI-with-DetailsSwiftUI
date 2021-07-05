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

struct ContentView2: View {
    @State private var selectedSize = 2
    @State private var selectedColor = 0
    let sizes = ["S", "M", "L", "XL", "XLL"]
    let colors = ["red", "green", "blue"]
    
    var body: some View {
        VStack {
            HStack {
                Picker(selection: $selectedSize,
                       label: Text("Size")) {
                    ForEach(0..<sizes.count) { index in
                        Text(sizes[index])
                    }
                }
                .frame(width: 150)
                .padding(.horizontal, 10)
                .clipped()

                Picker(selection: $selectedColor,
                       label: Text("Color")) {
                    ForEach(0..<colors.count) { index in
                        Text(colors[index])
                    }
                }
                .frame(width: 150)
                .padding(.horizontal, 10)
                .clipped()
                .onAppear {
                    selectedColor = colors.count / 2
                }
            }
            
            HStack {
                Text("size \(sizes[selectedSize])")
                    .padding(40)
                Text("color \(colors[selectedColor])")
                    .padding(30)
            }
            .foregroundColor(.white)
            .font(.title2)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 340, height: 50)
                    .foregroundColor(.green)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
