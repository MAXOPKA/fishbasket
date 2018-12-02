//
//  FishingsPresenter.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol FishingsPresentationLogic {
  func presentSomething(response: Fishings.Show.Response)
}

class FishingsPresenter: FishingsPresentationLogic {
  weak var viewController: FishingsDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Fishings.Show.Response) {
    let viewModel = Fishings.Show.ViewModel()
    viewController?.displayFishings(viewModel: viewModel)
  }
}
