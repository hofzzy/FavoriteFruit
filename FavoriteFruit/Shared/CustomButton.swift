//
//  CustomButton.swift
//  FavoriteFruit
//
//  Created by 増山洸輝 on 2018/12/15.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {
  @IBInspectable var imageViewContentMode: Int {
    get {
      guard let _imageView = imageView else {
        return UIView.ContentMode.scaleToFill.rawValue
      }
      return _imageView.contentMode.rawValue
    }
    set {
      imageView?.contentMode = UIView.ContentMode.init(rawValue: newValue) ?? .scaleToFill
    }
  }
}
