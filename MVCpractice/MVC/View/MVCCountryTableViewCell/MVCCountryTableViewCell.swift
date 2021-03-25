//
//  MVCCountryTableViewCell.swift
//  MVCpractice
//
//  Created by 木元健太郎 on 2021/03/25.
//

import UIKit

final class MVCCountryTableViewCell: UITableViewCell {
  
  @IBOutlet private weak var countryImageView: UIImageView!
  @IBOutlet private weak var nameLabel: UILabel!
  @IBOutlet private weak var moneyRatioLabel: UILabel!

  override func prepareForReuse() {
    super.prepareForReuse()
    countryImageView.image = nil
    nameLabel.text = nil
    moneyRatioLabel.text = nil
  }

  func configure(country: MVCCountryModel) {
    countryImageView.image = UIImage.init(named: country.imageName)
    nameLabel.text = country.name
    moneyRatioLabel.text = country.moneyRatio.description
  }
}
