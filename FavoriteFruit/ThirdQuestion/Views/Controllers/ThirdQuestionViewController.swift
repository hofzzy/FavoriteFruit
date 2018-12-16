//
//  ThirdQuestionViewController.swift
//  FavoriteFruit
//
//  Created by 増山 洸輝 on 2018/12/15.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

class ThirdQuestionViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let tapGestureWithTwoFingers = UITapGestureRecognizer(target: self, action: #selector(notifyAnsweredYesToThirdQuestion(sender:)))
    tapGestureWithTwoFingers.numberOfTouchesRequired = 2

    view.addGestureRecognizer(tapGestureWithTwoFingers)
  }

  @objc func notifyAnsweredYesToThirdQuestion(sender: UITapGestureRecognizer) {
    NotificationCenter.default.post(name: .answeredYesToThirdQuestion, object: self)
  }
}
