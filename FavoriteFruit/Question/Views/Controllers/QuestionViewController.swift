//
//  QuestionViewController.swift
//  FavoriteFruit
//
//  Created by 増山 洸輝 on 2018/12/15.
//  Copyright © 2018 hofzzy. All rights reserved.
//

import UIKit

extension Notification.Name {
  static let answeredYesToFirstQuestion = Notification.Name("answered_yes_to_first_question")
  static let answeredYesToSecondQuestion = Notification.Name("answered_yes_to_second_question")
  static let answeredYesToThirdQuestion = Notification.Name("answered_yes_to_third_question")
  static let answeredYesToFourthQuestion = Notification.Name("answered_yes_to_fourth_question")
}

class QuestionViewController: UIPageViewController {

  private lazy var firstQuestionController = R.storyboard.firstQuestion.instantiateInitialViewController()!
  private lazy var secondQuestionController = R.storyboard.secondQuestion.instantiateInitialViewController()!
  private lazy var thirdQuestionController = R.storyboard.thirdQuestion.instantiateInitialViewController()!
  private lazy var fourthQuestionController = R.storyboard.fourthQuestion.instantiateInitialViewController()!

  private var sum = 0

  weak var questionViewControlllerDelegate: QuestionViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()

    dataSource = self

    setViewControllers([firstQuestionController], direction: .forward, animated: true)

    NotificationCenter.default.addObserver(self, selector: #selector(addOneToSelectedFruitNumber(_:)), name: .answeredYesToFirstQuestion, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(addTwoToSelectedFruitNumber(_:)), name: .answeredYesToSecondQuestion, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(addFourToSelectedFruitNumber(_:)), name: .answeredYesToThirdQuestion, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(addEightToSelectedFruitNumber(_:)), name: .answeredYesToFourthQuestion, object: nil)
  }

  @IBAction func closeButtonDidTap(_ sender: Any) {
    questionViewControlllerDelegate?.notifyQuestionResult(sum)
    dismiss(animated: true)
  }

  @objc private func addOneToSelectedFruitNumber(_ notification: Notification) {
    sum += 1
  }

  @objc private func addTwoToSelectedFruitNumber(_ notification: Notification) {
    sum += 2
  }

  @objc private func addFourToSelectedFruitNumber(_ notification: Notification) {
    sum += 4
  }

  @objc private func addEightToSelectedFruitNumber(_ notification: Notification) {
    sum += 8
  }
}

extension QuestionViewController: UIPageViewControllerDataSource {
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    switch viewController {
    case is FourthQuestionViewController:
      return thirdQuestionController
    case is ThirdQuestionViewController:
      return secondQuestionController
    case is SecondQuestionViewController:
      return firstQuestionController
    default:
      return nil
    }
  }

  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    switch viewController {
    case is FirstQuestionViewController:
      return secondQuestionController
    case is SecondQuestionViewController:
      return thirdQuestionController
    case is ThirdQuestionViewController:
      return fourthQuestionController
    default:
      return nil
    }
  }
}

protocol QuestionViewControllerDelegate: class {
  func notifyQuestionResult(_ sum: Int)
}
