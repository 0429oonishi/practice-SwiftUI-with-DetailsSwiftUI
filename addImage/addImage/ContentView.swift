//
//  ContentView.swift
//  addImage
//
//  Created by 大西玲音 on 2021/06/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("a")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 400)
                .scaleEffect(1.4)
                .offset(x: 30, y: 30)
                .clipped()
                .overlay(
                    Text("ジラーチ")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .offset(x: 0, y: -50)
                )
        }
        
        Circle()
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
            .overlay(
                Ellipse()
                        .foregroundColor(.green)
                        .frame(width: 300, height: 200)
                    .overlay(
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: 200, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundColor(.pink)
                                    .frame(width: 100, height: 50)
                            )
                    )
            )
        
        Capsule()
            .stroke(lineWidth: 4)
            .foregroundColor(.red)
            .frame(width: 300, height: 200)
            .rotationEffect(.degrees(-45))
            .clipped()
        
        ZStack {
            MyEllipse()
                .foregroundColor(.red)
            MyEllipse()
                .foregroundColor(.blue)
                .rotationEffect(.degrees(30), anchor: .bottom)
            MyEllipse()
                .foregroundColor(.green)
                .rotationEffect(.degrees(-30), anchor: .bottom)
            MyEllipse()
                .foregroundColor(.pink)
                .rotationEffect(.degrees(60), anchor: .bottom)
            MyEllipse()
                .foregroundColor(.orange)
                .rotationEffect(.degrees(-60), anchor: .bottom)
            
        }
        
        Circle()
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
            .position(x: 100, y: 100)
        
        Image("a")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(radius: 20)
            .rotation3DEffect(
                .degrees(30),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
        
    }
}

struct MyEllipse: View {
    var body: some View {
        Ellipse()
            .stroke(lineWidth: 3)
            .frame(width: 100, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
