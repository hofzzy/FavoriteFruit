//
//  Container.swift
//  FavoriteFruit
//
//  Created by 増山 洸輝 on 2018/12/15.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

@IBDesignable
class Container: UIView {
  @IBInspectable var cornerRadius: CGFloat = 0
  @IBInspectable var borderWidth: CGFloat = 0.0
  @IBInspectable var borderColor: UIColor = .clear

  override init(frame: CGRect) {
    super.init(frame: frame)
    initialize()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    initialize()
  }

  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    initialize()
  }

  private func initialize() {
    isExclusiveTouch = true

    layer.cornerRadius = cornerRadius
    layer.borderWidth = borderWidth
    layer.borderColor = borderColor.cgColor
  }
}
