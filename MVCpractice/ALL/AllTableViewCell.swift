//
//  AllTableViewCell.swift
//  MVCpractice
//
//  Created by 木元健太郎 on 2021/03/25.
//

import UIKit

final class AllTableViewCell: UITableViewCell {
  //* セルの中のviewがカプセル化されていない
  //* 外部から好きなように書き換えられることになる
  @IBOutlet weak var userNameLabel: UILabel!
  @IBOutlet weak var atNameLabel: UILabel!
  @IBOutlet weak var userSwitch: UISwitch!

  //セルの再利用時に呼ばれる初期化メソッド
  override func prepareForReuse() {
    super.prepareForReuse()
    userNameLabel.text = nil
    atNameLabel.text = nil
    userSwitch.isOn = false
  }
}
