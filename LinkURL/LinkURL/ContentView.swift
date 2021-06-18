//
//  ContentView.swift
//  LinkURL
//
//  Created by 大西玲音 on 2021/06/18.
//

import SwiftUI

struct ContentView: View {
    let webList = [
        WebData(name: "ピカチュウ",
                url: "https://www.apple.com/",
                favicon: "ピカチュウ"),
        WebData(name: "イーブイ",
                url: "https://github.com/0429oonishi",
                favicon: "イーブイ"),
        WebData(name: "ヒトカゲ",
                url: "https://qiita.com/REON",
                favicon: "ヒトカゲ")
        
    ]
    var body: some View {
        NavigationView {
            List(webList) { item in
                Image(item.favicon)
                    .resizable()
                    .frame(width: 100,
                           height: 100)
                Link(item.name,
                     destination: URL(string: item.url)!)
            }
            .navigationBarTitle("Webリスト")
        }
    }
}

struct WebData: Identifiable {
    var id = UUID()
    var name: String
    var url: String
    var favicon: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
