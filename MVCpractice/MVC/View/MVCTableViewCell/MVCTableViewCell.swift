//
//  MVCTableViewCell.swift
//  MVCpractice
//
//  Created by 木元健太郎 on 2021/03/25.
//

import UIKit

final class MVCTableViewCell: UITableViewCell {

  @IBOutlet private weak var userNameLabel: UILabel!
  @IBOutlet private weak var atNameLabel: UILabel!
  @IBOutlet private weak var userSwitch: UISwitch!

  //セルの再利用時に呼ばれる初期化メソッド
  override func prepareForReuse() {
    super.prepareForReuse()
    userNameLabel.text = nil
    atNameLabel.text = nil
    userSwitch.isOn = false
  }

  //セルの更新 モデルを受け取る
  func configure(user: MVCUserModel) {
    userNameLabel.text = user.name
    atNameLabel.text = user.atName
    userSwitch.isOn = user.isOn
  }
}
