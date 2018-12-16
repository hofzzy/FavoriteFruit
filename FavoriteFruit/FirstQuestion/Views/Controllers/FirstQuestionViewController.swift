//
//  FirstQuestionViewController.swift
//  FavoriteFruit
//
//  Created by 増山洸輝 on 2018/12/15.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

class FirstQuestionViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let tapGestureWithTwoFingers = UITapGestureRecognizer(target: self, action: #selector(notifyAnsweredYesToFirstQuestion(sender:)))
    tapGestureWithTwoFingers.numberOfTouchesRequired = 2

    view.addGestureRecognizer(tapGestureWithTwoFingers)
  }

  @objc func notifyAnsweredYesToFirstQuestion(sender: UITapGestureRecognizer) {
    NotificationCenter.default.post(name: .answeredYesToFirstQuestion, object: self)
  }
}
