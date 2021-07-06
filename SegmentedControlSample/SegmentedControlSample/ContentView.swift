//
//  ContentView.swift
//  SegmentedControlSample
//
//  Created by 大西玲音 on 2021/07/06.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColorNumber = 0
    let colorViews: [Color] = [.red, .green, .blue]
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColorNumber,
                   label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            symbolImage(num: selectedColorNumber)
                .resizable()
                .foregroundColor(colorViews[selectedColorNumber])
                .frame(width: 100, height: 100)
                .padding()
        }
    }
    
    func symbolImage(num: Int) -> Image {
        switch num {
            case 0: return Image(systemName: "r.circle")
            case 1: return Image(systemName: "g.circle")
            case 2: return Image(systemName: "b.circle")
            default: return Image(systemName: "r.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
