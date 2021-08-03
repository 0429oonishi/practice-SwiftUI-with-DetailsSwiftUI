//
//  ContentView.swift
//  TextFieldSample
//
//  Created by 大西玲音 on 2021/08/03.
//

import SwiftUI

struct ContentView: View {
    @State private var count: String = ""
    private let tanka: Double = 250
    private let tax: Double = 1.1
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("個数: ")
                    .padding(.horizontal)
                TextField("0", text: $count)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: 100)
            }
            .font(.title)
            .frame(width: 200)
            Group {
                if checkCount(min: 1, max: 10) {
                    Text("\(price())円です")
                        .font(.title)
                } else {
                    Text("個数は1〜10個を入れてください")
                        .foregroundColor(.red)
                        .font(.headline)
                }
            }
            .frame(width: 300, height: 30)
        }
    }
    
    private func checkCount(min: Int, max: Int) -> Bool {
        guard let num = Int(count) else { return false }
        return (num >= min && num <= max)
    }
    
    private func price() -> Int {
        if let num = Double(count) {
            let result = Int(tanka * num * tax)
            return result
        }
        return -1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
