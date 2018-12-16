//
//  SecondQuestionViewController.swift
//  FavoriteFruit
//
//  Created by 増山 洸輝 on 2018/12/15.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

class SecondQuestionViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let tapGestureWithTwoFingers = UITapGestureRecognizer(target: self, action: #selector(notifyAnsweredYesToSecondQuestion(sender:)))
    tapGestureWithTwoFingers.numberOfTouchesRequired = 2

    view.addGestureRecognizer(tapGestureWithTwoFingers)
  }

  @objc func notifyAnsweredYesToSecondQuestion(sender: UITapGestureRecognizer) {
    NotificationCenter.default.post(name: .answeredYesToSecondQuestion, object: self)
  }
}
