//
//  ContentView.swift
//  ContentList
//
//  Created by 大西玲音 on 2021/06/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("text1")
                Text("text2")
                Photo1().frame(width: 400, height: 100)
                Text("text3")
                Text("text4")
                Photo2().frame(width: 200, height: 100)
                Text("text5")
            }
            .navigationTitle("ポケモン")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView2: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello World")
            Divider()
            Photo1().frame(width: 400, height: 100)
            Divider()
            Divider()
            Divider()
            Divider()
            Photo2().frame(width: 400, height: 100)
            Divider()
            Spacer()
        }
        .padding(.all, 10)
    }
}

let metros = ["銀座線",
              "丸の内線",
              "千代田線",
              "東北線",
              "副都心線",
              "半蔵門線",
              "日比谷線"]

struct ContentView3: View {
    var body: some View {
        List(0 ..< metros.count) { item in
            HStack {
                Text("\(item)")
                Text(metros[item])
            }
        }
    }
}

struct Photo1: View {
    var body: some View {
        HStack {
            Image("a")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("みゅー")
                .padding(.horizontal)
        }
    }
}

struct Photo2: View {
    var body: some View {
        HStack {
            Image("b")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("ピカチュー")
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView2()
        ContentView3()
    }
}
