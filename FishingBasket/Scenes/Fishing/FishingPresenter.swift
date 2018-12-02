//
//  FishingPresenter.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol FishingPresentationLogic {
  func presentSomething(response: Fishing.Show.Response)
}

class FishingPresenter: FishingPresentationLogic {
  weak var viewController: FishingDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Fishing.Show.Response) {
    let viewModel = Fishing.Show.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
