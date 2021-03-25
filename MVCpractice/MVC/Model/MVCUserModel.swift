//
//  MVCUserModel.swift
//  MVCpractice
//
//  Created by 木元健太郎 on 2021/03/25.
//

import Foundation

//Codableに準拠したモデル
//jsonの文字列からこのstructのインスタンスに簡単に変えられる
struct MVCUserModel: Codable {
  var name: String = ""
  var atName: String = ""
  var isOn: Bool = false

  //jsonのkeyとパラメータの対応付け
  enum CodingKeys: String, CodingKey {
    case name
    case atName = "at_name"
    case isOn = "switch"
  }

  //computed parameter
  var alertText: String {
    name + "\n" + atName
  }
}
