//
//  ResultViewController.swift
//  FavoriteFruit
//
//  Created by 増山 洸輝 on 2018/12/16.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

  @IBOutlet weak var resultImageView: UIImageView!
  @IBOutlet weak var resultLabel: UILabel!

  private var fruit = Fruit(fruitType: .unknown) // Dependency

  weak var delegate: ResultViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()

    bindDependency()
  }

  @IBAction func closeButtonDidTap(_ sender: Any) {
    delegate?.resetAct()
    dismiss(animated: true)
  }

  private func bindDependency() {
    if fruit.type == .unknown {
      resultImageView.isHidden = true
      resultLabel.text = "フルーツが\n選択されていません"
    } else {
      resultImageView.image = fruit.image
      resultLabel.text = fruit.name
    }
  }

  func inject(fruit: Fruit) {
    self.fruit = fruit
  }
}

protocol ResultViewControllerDelegate: class {
  func resetAct()
}
