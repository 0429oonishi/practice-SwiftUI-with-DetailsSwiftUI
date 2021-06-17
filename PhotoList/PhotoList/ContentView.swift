//
//  ContentView.swift
//  PhotoList
//
//  Created by 大西玲音 on 2021/06/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                Image("ピカチュウ")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                NavigationLink(destination: SubView()) {
                    Text("ピカチュウ")
                }
                .padding()
                Image("イーブイ")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                NavigationLink(destination: SubView2()) {
                    Text("イーブイ")
                }
                Spacer()
            }
            .navigationTitle("ポケモン")
        }
    }
}

struct SubView: View {
    var body: some View {
        VStack {
        Image("ピカチュウ")
            .resizable()
            .aspectRatio(contentMode: .fit)
        Text("ピカチュウ")
            .padding(.bottom)
        Text("雷タイプのポケモン")
        }
        .padding()
        .navigationTitle(Text("SubView Title"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SubView2: View {
    var body: some View {
        VStack {
            Image("イーブイ")
                .resizable()
                .aspectRatio(contentMode: .fit)
                Text("イーブイ")
                    .padding(.bottom)
            Text("たくさん進化するポケモン")
        }
        .padding()
        .navigationTitle(Text("SubView2 Title"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
