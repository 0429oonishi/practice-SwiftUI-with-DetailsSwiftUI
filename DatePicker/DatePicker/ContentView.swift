//
//  ContentView.swift
//  DatePicker
//
//  Created by 大西玲音 on 2021/07/08.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    
    var body: some View {
        DatePicker(selection: $theDate,
                   label: { Text("日時") })
            .environment(\.locale, Locale(identifier: "ja_JP"))
        .padding(50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
