//
//  ViewController.swift
//  FavoriteFruit
//
//  Created by 増山洸輝 on 2018/12/15.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

class FruitListController: UIViewController {

  private var selectedFruitType: FruitType = .unknown

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func askFavoriteFruitButtonDidTap(_ sender: Any) {
    presentQuestion()
  }

  @IBAction func rightNavigationBarButtonDidTap(_ sender: Any) {
    presentResult()
  }

  @IBAction func leftNavigationBarButtonDidTap(_ sender: Any) {
    presentResult()
  }

  private func presentQuestion() {
    let questionNavigationController = R.storyboard.question.instantiateInitialViewController()!

    let questionController = questionNavigationController.topViewController as! QuestionViewController
    questionController.questionViewControlllerDelegate = self

    present(questionNavigationController, animated: true)
  }

  private func presentResult() {
    let resultNavigationController = R.storyboard.result.instantiateInitialViewController()!

    let resultController = resultNavigationController.topViewController as! ResultViewController
    resultController.delegate = self
    resultController.inject(fruit: Fruit(fruitType: selectedFruitType))

    present(resultNavigationController, animated: true)
  }
}

extension FruitListController: QuestionViewControllerDelegate {
  func notifyQuestionResult(_ sum: Int) {
    selectedFruitType = FruitType(rawValue: sum) ?? .unknown
  }
}

extension FruitListController: ResultViewControllerDelegate {
  func resetAct() {
    selectedFruitType = .unknown
  }
}
