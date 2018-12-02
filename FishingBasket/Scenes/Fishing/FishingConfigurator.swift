//
//  FishingConfigurator.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

final class FishingConfigurator {
  
  static let sharedInstance = FishingConfigurator()
  
  func configure(viewController: FishingViewController) {
    
    let presenter = FishingPresenter()
    presenter.viewController = viewController
    
    let interactor = FishingInteractor()
    interactor.presenter = presenter
    
    let router = FishingRouter()
    router.viewController = viewController
    router.dataStore = interactor
    
    viewController.interactor = interactor
    viewController.router = router
  }
}
