//
//  FishingsConfigurator.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

final class FishingsConfigurator {
  
  static let sharedInstance = FishingsConfigurator()
  
  func configure(viewController: FishingsViewController) {
    
    let presenter = FishingsPresenter()
    presenter.viewController = viewController
    
    let interactor = FishingsInteractor()
    interactor.presenter = presenter
    
    let router = FishingsRouter()
    router.viewController = viewController
    router.dataStore = interactor
    
    viewController.interactor = interactor
    viewController.router = router
  }
}
