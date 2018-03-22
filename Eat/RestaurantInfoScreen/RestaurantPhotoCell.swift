//
//  RestaurantPhotoCell.swift
//  Eat
//
//  Created by Henry Jones on 2018-03-16.
//  Copyright © 2018 launchpad. All rights reserved.
//

import UIKit

class RestaurantPhotoCell: UITableViewCell {

  @IBOutlet weak var restaurantImageView: UIImageView!
  @IBOutlet weak var seeMoreImageButton: UIButton!
  override func awakeFromNib() {
        super.awakeFromNib()
        seeMoreImageButton.titleLabel?.font = Font.button(size: 16)
        // Initialization code
    }

  func configure(imageUrl: String) {
    if let url = URL(string: imageUrl), let data = try? Data(contentsOf: url) {
      restaurantImageView.image = UIImage(data: data)
    } else {
      restaurantImageView.image = #imageLiteral(resourceName: "default_restaurant_photo")
    }
  }

}
