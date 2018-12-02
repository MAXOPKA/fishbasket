//
//  ArchiveFishingPresenter.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol ArchiveFishingPresentationLogic {
  func presentSomething(response: ArchiveFishing.Something.Response)
}

class ArchiveFishingPresenter: ArchiveFishingPresentationLogic {
  weak var viewController: ArchiveFishingDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: ArchiveFishing.Something.Response) {
    let viewModel = ArchiveFishing.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
