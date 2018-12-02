//
//  SettingsConfigurator.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

final class SettingsConfigurator {
  
  static let sharedInstance = SettingsConfigurator()
  
  func configure(viewController: SettingsViewController) {
    
    let presenter = SettingsPresenter()
    presenter.viewController = viewController
    
    let interactor = SettingsInteractor()
    interactor.presenter = presenter
    
    let router = SettingsRouter()
    router.viewController = viewController
    router.dataStore = interactor
    
    viewController.interactor = interactor
    viewController.router = router
  }
}
