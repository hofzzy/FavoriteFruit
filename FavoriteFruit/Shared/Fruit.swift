//
//  Fruit.swift
//  FavoriteFruit
//
//  Created by 増山 洸輝 on 2018/12/16.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

enum FruitType: Int {
  case unknown = 0
  case cherry = 1
  case lemon = 2
  case watermelon = 3
  case pineapple = 4
  case banana = 5
  case apple = 6
  case blueberry = 7
  case tomato = 8
  case orange = 9
  case grape = 10
  case strawberry = 11
  case pear = 12
}

struct Fruit {
  let type: FruitType
  let name: String
  let image: UIImage?

  init(fruitType: FruitType) {
    switch fruitType {
    case .cherry:
      type = .cherry
      name = "さくらんぼ"
      image = UIImage(named: "cherry")
    case .lemon:
      type = .lemon
      name = "レモン"
      image = UIImage(named: "lemon")
    case .watermelon:
      type = .watermelon
      name = "スイカ"
      image = UIImage(named: "watermelon")
    case .pineapple:
      type = .pineapple
      name = "パイナップル"
      image = UIImage(named: "pineapple")
    case .banana:
      type = .banana
      name = "バナナ"
      image = UIImage(named: "banana")
    case .apple:
      type = .apple
      name = "りんご"
      image = UIImage(named: "apple")
    case .blueberry:
      type = .blueberry
      name = "ブルーベリー"
      image = UIImage(named: "blueberry")
    case .tomato:
      type = .tomato
      name = "トマト"
      image = UIImage(named: "tomato")
    case .orange:
      type = .orange
      name = "オレンジ"
      image = UIImage(named: "orange")
    case .grape:
      type = .grape
      name = "ぶどう"
      image = UIImage(named: "grape")
    case .strawberry:
      type = .grape
      name = "いちご"
      image = UIImage(named: "strawberry")
    case .pear:
      type = .pear
      name = "ナシ"
      image = UIImage(named: "pear")
    case .unknown:
      type = .unknown
      name = ""
      image = nil
    }
  }
}
