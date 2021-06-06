//
//  ContentView.swift
//  ListSection
//
//  Created by 大西玲音 on 2021/06/06.
//

import SwiftUI

struct ContentView: View {
    let shikoku = ["徳島県", "香川県", "愛媛県", "高知県"]
    let kyosyu = ["福岡県", "佐賀県", "長崎県", "熊本県",
                  "大分県", "宮崎県", "鹿児島県"]
    var body: some View {
        List {
            Section(header: Text("四国")
                        .font(.largeTitle)
                        .padding(.top),
                    footer: Text("aaaaaa")) {
                ForEach(0..<shikoku.count) { index in
                    Text(self.shikoku[index])
                }
            }
            Section(header: Text("九州")
                        .font(.largeTitle)
                        .padding(.top),
                    footer: Text("bbbbbb")) {
                ForEach(0..<kyosyu.count) { index in
                    Text(self.kyosyu[index])
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
