//
//  ContentView.swift
//  DatePicker
//
//  Created by 大西玲音 on 2021/07/08.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    
    var dateFormat: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .full
        df.timeStyle = .short
        return df
    }
    
    var dateFormat2: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.calendar = Calendar(identifier: .japanese)
        df.dateFormat = "令和yy(YYYY)年M月dd日(E)HH時mm分"
        return df
    }
    
    var body: some View {
        VStack {
            Text(dateFormat.string(from: theDate))
            Text(dateFormat2.string(from: theDate))
            DatePicker("日付",
                       selection: $theDate,
                       displayedComponents: .date)
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .frame(width: 200, height: 40)
            .padding(50)
            
            DatePicker("時刻",
                       selection: $theDate,
                       displayedComponents: .hourAndMinute)
                .frame(width: 200, height: 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
