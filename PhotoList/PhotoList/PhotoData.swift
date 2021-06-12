//
//  PhotoData.swift
//  PhotoList
//
//  Created by 大西玲音 on 2021/06/12.
//

import Foundation

struct PhotoData: Identifiable {
    var id: Int
    var imageName: String
    var title: String
}

var photos = [PhotoData(id: 1, imageName: "ピカチュウ", title: "ピカチュウ"),
              PhotoData(id: 2, imageName: "ヒトカゲ", title: "ヒトカゲ"),
              PhotoData(id: 3, imageName: "イーブイ", title: "イーブイ"),
              PhotoData(id: 1, imageName: "ピカチュウ", title: "ピカチュウ"),
              PhotoData(id: 2, imageName: "ヒトカゲ", title: "ヒトカゲ"),
              PhotoData(id: 3, imageName: "イーブイ", title: "イーブイ"),
              PhotoData(id: 1, imageName: "ピカチュウ", title: "ピカチュウ"),
              PhotoData(id: 2, imageName: "ヒトカゲ", title: "ヒトカゲ"),
              PhotoData(id: 3, imageName: "イーブイ", title: "イーブイ"),
              PhotoData(id: 1, imageName: "ピカチュウ", title: "ピカチュウ"),
              PhotoData(id: 2, imageName: "ヒトカゲ", title: "ヒトカゲ"),
              PhotoData(id: 3, imageName: "イーブイ", title: "イーブイ")
]
