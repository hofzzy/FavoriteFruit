//
//  FourthQuestionViewController.swift
//  FavoriteFruit
//
//  Created by 増山 洸輝 on 2018/12/16.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

class FourthQuestionViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let tapGestureWithTwoFingers = UITapGestureRecognizer(target: self, action: #selector(notifyAnsweredYesToFourthQuestion(sender:)))
    tapGestureWithTwoFingers.numberOfTouchesRequired = 2

    view.addGestureRecognizer(tapGestureWithTwoFingers)
  }

  @objc func notifyAnsweredYesToFourthQuestion(sender: UITapGestureRecognizer) {
    NotificationCenter.default.post(name: .answeredYesToFourthQuestion, object: self)
  }
}
